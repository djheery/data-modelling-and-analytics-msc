-- Explore the dataset and justify whether UFCrC's problem belongs to predictive or descriptive data mining models. Choose which data mining task (e.g classification, association rules, clustering, regression, etc) will be used to produce data mining models for the UFCrC's scenario 

-- One believes that this problem belongs to predictive data mining models. This is due to the fact that there is a necessity to "predict" if a customer will default within a specific time frame in order to help mitigate the issue that the UFCrC are having, and the avalaibility of historical data to inform the predictions.

-- I have chosen to use the data mining task classification to classify customers as likely or unlikly to default on their next payment. The mining algorithms chosing are the decision tree algorithm and support vector machines (svm) algorithm using Oracle Data Mining (ODM) as after some experimenting these were the two that ouput the best results. 

-- Create Views and Dataset 

CREATE OR REPLACE VIEW CCV2_DATA_BUILD_V AS
    SELECT * FROM (SELECT C.*, 
                   row_number() over (ORDER BY c.card) AS RNK 
                   FROM creditcardsv2 c)
                   WHERE RNK <= 10000;

CREATE OR REPLACE VIEW CCV2_DATA_TEST_V AS
    SELECT * FROM (SELECT c.*, 
                   row_number() over (ORDER BY c.card) AS RNK 
                   FROM creditcardsv2 c)
                   WHERE RNK > 10001 AND RNK <= 20000;

CREATE OR REPLACE VIEW CCV2_DATA_APPLY_V AS
    SELECT * FROM (SELECT C.*, 
                   row_number() over   (ORDER BY c.card) AS RNK 
                   FROM creditcardsv2 c)
                   WHERE RNK > 20000 AND RNK <= 30000;
                   
-- Create Models 

CREATE TABLE ccv2_svm_model_settings (
    setting_name VARCHAR2(30),
    setting_value VARCHAR2(30)
);

CREATE TABLE ccv2_dt_model_settings (
    setting_name VARCHAR2(30),
    setting_value VARCHAR2(30)
);


BEGIN 
    INSERT INTO ccv2_svm_model_settings (setting_name, setting_value)
        VALUES(dbms_data_mining.algo_name, dbms_data_mining.algo_support_vector_machines);
    INSERT INTO ccv2_svm_model_settings (setting_name, setting_value)
        VALUES(dbms_data_mining.prep_auto, dbms_data_mining.prep_auto_on);
    INSERT INTO ccv2_dt_model_settings (setting_name, setting_value)
        VALUES(dbms_data_mining.algo_name, dbms_data_mining.algo_decision_tree);
    INSERT INTO ccv2_dt_model_settings (setting_name, setting_value)
        VALUES(dbms_data_mining.prep_auto, dbms_data_mining.prep_auto_on);
END;
/

BEGIN 
    DBMS_DATA_MINING.DROP_MODEL(model_name => 'CCV2_CLAS_SVM_SAMPLE');
    DBMS_DATA_MINING.DROP_MODEL(model_name => 'CCV2_CLAS_DT_SAMPLE');
    DBMS_DATA_MINING.CREATE_MODEL(
        model_name              => 'CCV2_CLAS_SVM_SAMPLE',
        mining_function        => dbms_data_mining.classification,
        data_table_name         => 'CCV2_DATA_BUILD_V',
        case_id_column_name     => 'card',
        target_column_name      => 'defaultpaynxtmnt',
        settings_table_name     => 'ccv2_svm_model_settings'
    );
    DBMS_DATA_MINING.CREATE_MODEL(
        model_name              => 'CCV2_CLAS_DT_SAMPLE',
        mining_function        => dbms_data_mining.classification,
        data_table_name         => 'CCV2_DATA_BUILD_V',
        case_id_column_name     => 'card',
        target_column_name      => 'defaultpaynxtmnt',
        settings_table_name      => 'ccv2_dt_model_settings'
    );
END;
/

-- Test the Models 

REM DT MODEL  

SELECT DEFAULTPAYNXTMNT AS actual_target_value,
       PREDICTION(CCV2_CLAS_DT_SAMPLE USING *) AS predicted_target_value,
       COUNT(*) AS total_value
FROM ccv2_data_test_v
GROUP BY DEFAULTPAYNXTMNT, PREDICTION(CCV2_CLAS_DT_SAMPLE USING *)
ORDER BY 1, 2;

COLUMN ACCURACY FORMAT 99.99
SELECT (SUM(correct)/COUNT(*))*100  AS accuracy
FROM  (SELECT DECODE(DEFAULTPAYNXTMNT,
                     PREDICTION(CCV2_CLAS_DT_SAMPLE USING *), 1, 0) AS correct
        FROM ccv2_data_test_v);

REM SVM MODEL 
REM This Prediction performs better when ommiting the card, marital_status and age subsets of the data rows. 

SELECT DEFAULTPAYNXTMNT AS actual_target_value,
       PREDICTION(CCV2_CLAS_SVM_SAMPLE USING 
        credit_limit, gender, edulevel, 
        stmt_amount1, stmt_amount2, stmt_amount3, 
        stmt_amount4, stmt_amount5, stmt_amount6, 
        payment_status1, payment_status2, payment_status3,
        payment_status4, payment_status5, payment_status6,
        paid_amount1, paid_amount2, paid_amount3, 
        paid_amount4, paid_amount5, paid_amount6
       ) AS predicted_target_value,
       COUNT(*) AS total_value
FROM ccv2_data_test_v
GROUP BY DEFAULTPAYNXTMNT, 
         PREDICTION(CCV2_CLAS_SVM_SAMPLE USING 
            credit_limit, gender, edulevel, 
            stmt_amount1, stmt_amount2, stmt_amount3, 
            stmt_amount4, stmt_amount5, stmt_amount6, 
            payment_status1, payment_status2, payment_status3,
            payment_status4, payment_status5, payment_status6,
            paid_amount1, paid_amount2, paid_amount3, 
            paid_amount4, paid_amount5, paid_amount6
         ) 
ORDER BY 1, 2;
        
COLUMN ACCURACY FORMAT 99.99
SELECT (SUM(correct)/COUNT(*))*100  AS accuracy
FROM  (SELECT DECODE(DEFAULTPAYNXTMNT,
                     PREDICTION(CCV2_CLAS_SVM_SAMPLE USING 
                     credit_limit, gender, edulevel, 
                     stmt_amount1, stmt_amount2, stmt_amount3, 
                     stmt_amount4, stmt_amount5, stmt_amount6, 
                     payment_status1, payment_status2, payment_status3,
                     payment_status4, payment_status5, payment_status6,
                     paid_amount1, paid_amount2, paid_amount3, 
                     paid_amount4, paid_amount5, paid_amount6
         ) , 1, 0) AS correct
        FROM ccv2_data_test_v);
        
-- Apply the data and show the results 

-- When applying the newly created models to the apply data subset I selected the top 100 who have been selected as most likely to default on their next payment. Due to the model 80% of this subset can be reliably predicted to default on their next payment. 

-- When querying the data produced by the view LIKELY_TO_DEFAULT_SVM I was able to pick out a few trends.

-- Of the customers in the top 100, 98% have overdue payments of 2 months or more on their previous 3 statements. 100% have overdue payments on 2 of their most recent statements    

-- These insights have been made on the assumption that payment_status1 pertains to the most recent statement and payment_status6 at the six month mark.

CREATE OR REPLACE VIEW LIKLEY_TO_DEFAULT_SVM AS
SELECT card
FROM (SELECT card, rank() over 
      (ORDER BY PREDICTION_PROBABILITY(CCV2_CLAS_SVM_SAMPLE, 1 USING 
                      credit_limit, gender, edulevel, 
                      stmt_amount1, stmt_amount2, stmt_amount3, 
                      stmt_amount4, stmt_amount5, stmt_amount6, 
                      payment_status1, payment_status2, payment_status3,
                      payment_status4, payment_status5, payment_status6,
                      paid_amount1, paid_amount2, paid_amount3, 
                      paid_amount4, paid_amount5, paid_amount6                         
        ) DESC, card) RNK
     FROM CCV2_DATA_APPLY_V)
     WHERE RNK <= 100
     ORDER BY RNK;
     
SELECT COUNT(*) FROM creditcardsv2 
WHERE card IN (SELECT * FROM LIKELY_TO_DEFAULT_SVM);

-- 20% edulevel of high school
SELECT COUNT(*) FROM creditcardsv2 
WHERE card IN (SELECT * FROM LIKELY_TO_DEFAULT_SVM
              WHERE edulevel = 3);
              
-- 60% are university graduates
SELECT COUNT(*) FROM creditcardsv2 
WHERE card IN (SELECT * FROM LIKELY_TO_DEFAULT_SVM
              WHERE edulevel = 2);

-- 19% are Postgraduate graduates
SELECT COUNT(*) FROM creditcardsv2 
WHERE card IN (SELECT * FROM LIKELY_TO_DEFAULT_SVM
              WHERE edulevel = 1);

-- 62% between 20 and 40
SELECT COUNT(age) from creditcardsV2 
WHERE card IN (SELECT * FROM LIKELY_TO_DEFAULT_SVM)
AND age > 20 AND age < 40;

-- 97% of top 100
     
SELECT COUNT(*) FROM creditcardsv2 
WHERE card IN (SELECT * FROM LIKELY_TO_DEFAULT_SVM
              WHERE payment_status1 > 2 AND payment_status2 > 1);

-- 83% between age 20 - 50 default when they have are overdue by 2 or more months on their last payment

SELECT COUNT(*) FROM creditcardsv2 
WHERE card IN (SELECT * FROM LIKELY_TO_DEFAULT_SVM
              WHERE payment_status1 >= 2)
AND age > 20 AND age < 50;

-- 

SELECT COUNT(*) FROM creditcardsv2 
WHERE card IN (SELECT * FROM LIKELY_TO_DEFAULT_SVM
              WHERE payment_status1 >= 2 AND payment_status2 >=2)
AND age > 21 AND age < 50;

-- 98% of top 100 
     
SELECT COUNT(*) FROM creditcardsv2 
WHERE card IN (SELECT * FROM LIKELY_TO_DEFAULT_SVM
              WHERE payment_status1 >= 2 AND payment_status2 >= 2 AND payment_status3 >= 2);

-- 100%

SELECT COUNT(*) FROM creditcardsv2 
WHERE card IN (SELECT * FROM LIKELY_TO_DEFAULT_SVM
              WHERE payment_status1 >= 1);

-- 100%;

SELECT COUNT(*) FROM creditcardsv2 
WHERE card IN (SELECT * FROM LIKELY_TO_DEFAULT_SVM
              WHERE payment_status2 >= 2);