# DM Tasks: Regression

The process of predicting numeric values, using a learning function that fits in with known numeric values is known as regression. 
The learning function is called a regression model. 
The function models the given/knwon data and fits the output to some desired values. 

What makes them linear or non-linear is the learning function: when depicted as a graph, a linear function will come out as a straight line (for example , ∕, ∖,  －) whereas a non-linear will look like anything but straight (for example, ～, ∿, ⦦, ︵ ).

To understand regression consider the following example: 

A bunch of professionals discussing how they plan for decent retirement savings. 
They wish to have about £500k each when they retire. 
They look at the values of savings increased over the past years and how those have impacted on the current values. 
They turned to statistics and found a way to determine a linear function - hence called linear regression - that predicts current values by fitting past values and then used the function to predict values at some future points. 
Based on what they have learned from the linear regression, they adjusted their savings/ investments to reach their desired levels. 

We applied linear regression to the cpu dataset (Storm, no date) to see if we can predict the processor’s performance from the six features given in the dataset, where numeric ‘class’ represent the actual performance. The linear regression algorithm determines a linear regression equation for predicted performance (PrP) as follows:

PrP = 0.0491 * MYCT + 0.0152 * MMIN + 0.0056 * MMAX + 0.6298 * CACH + 1.4599 * CHMAX - 56.075 

**Correlation Coefficient** - A statistical measure that the model has identified for features that are strongly related 
