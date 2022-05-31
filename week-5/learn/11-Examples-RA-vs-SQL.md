# Examples of Relational Algebra vs SQL

## Restriction and Projection in SQL 

The SELECT statement of SQL when applied to one table corresponds to **three** possible combinations of the relational algebra operators: 

σ c(R) and π L(R)

- σ Applied to a table
- π Applied to a table
- A combination of σ and π applied to a table

σ is the greek symbol for Sigma
π is the greek symbol for Pi

### σ c(R)

The σ c(R) represents the RESTRICT operator that picks certain rows from the relation R that satisfy the condition (c)

### π L(R)

The π L(R) represents the PROJECT operator that picks "L" columns of the relation R. 

## Examples

Below are some examples of Relational Algebra with their equivalent SQL statements

### Example 1

Display a List of all student IDs, names and Addresses 

**SQL**

SELECT StudentID, Name, Address 
FROM Student;

**RA**

π StudentId,Name,Address(STUDENT)

### Example 2

Display Full information about the students in Business Computing

**SQL**

SELECT * FROM STUDENT 
WHERE CourseName = 'Business Computing';

**RA**

σ CourseName = 'Business Computing' (STUDENT)

### Example 3

Display list of IDs and Names for Students in Business Computing

π StudentId,Name (σ CourseName= 'Business Computing' (STUDENT))

## Cartesian Product in SQL 

When applied to two tables simultaneously without the WHERE clause, the SELECT statements correspond to combinations of the unary relational algebra operators (π and/or σ) with the binary operator X, which represents Cartesian Product. R x S combines every tuple from the Relation R with every tuple from relatin S. 

### Example 1 

Display Full information abut students and courses 

**SQL**

SELECT * FROM STUDENT, COURSE

**RA**

STUDENT X COURSE 

### Example 2

Display list of IDs for both students and lecturers 

**SQL**

SELECT StudentId, LecturerId
FROM STUDENTS, LECTURERS;

**RA**

π StudentId, LecturerId (STUDENTS * LECTURERS)

Note: when more than one table is in a single SELECT statement, to avoid ambiguity when referring to columns with the same names, you should prefix them with the names of respective tables.

### Example 3

Retrieve names of all students and lecturers

SELECT STUDENT.name, LECTURER.name 
FROM STUDENT, LECTURER 

**RA**

Not given.

## Joining Tables in SQL 

When applied to two tables simultaneously, the SELECT statements with a WHERE clause correspond to combination of the two unary relational algebra operators:  σ (RESTRICT) and  π (PROJECT) with the binary operator  ⋈, which represents a general form of JOIN.

⋈ = General form of Join 

R(A1, A2, ..., An) ⋈c S(B1, B2, ..., Bn) combines those tuples from relations R and S into a resulting relation such that both sides satify the join condition "c".

The join condition (c) has a general form: 

(Ai op Bj) AND ... AND (Ah op Bk);
1 < i, 
h < m, 
1 < j,
k < n 

The comparison operator (op) can be:
- less than '<', 
- greater than '>',
- equal to '=',
- not equal to '<>'
- less than or equal to '<=',
- Greater than or equal to '>='

The join operator where c has a general form of (Ai = Bj) AND ... AND (Ah = Bk) is called an ***Equi-Join***

An Equi-join operator where the join condition equates columns of the same names from both R and S relations is known as a Natural-Join.
This is written as R * S;
You do not need to specify the join condition at all 

### Example 1 

Display Full information about the students and their courses

SQL - Join in where clause: 

SELECT *
FROM STUDENT, COURSE 
WHERE Student.Course = Course.Name;

SQL Join in FROM clause using INNER JOIN:

SELECT *
FROM STUDENT INNER JOIN COURSE ON
STUDENT.Course = COURSE.Name;

**RA**

STUDENT ⋈ Course = Name COURSE

### Example 2

Display list of student names along with their course leaders 

SQL: 

SELECT StudentName, CourseLeader 
FROM Student NATURAL JOIN Course;

**RA**

π StudentName, CourseLeader (Student * Course)


## Set Operations in SQL

The tuples returned as answers of two independent queries can be combined in a single relation using the set operators:

- ∪ (UNION) 
  - For the Union of two relations
- \- (DIFFERENCE) 
  - Difference between two relations 
- ∩  (INTERSECT)
  - For the intersection 

For ∪, ∩, —, the operand relations R (A1, ..., An) and S(B1, ..., Bn) must have the same number of attributes, and the domains of attributes must be compatible; that is, dom(Ai)=dom(Bi) for i=1, 2, ..., n. This condition is called union compatibility or domain compatibility.

The resulting relation for ∪ ,∩, or — has the same attribute names as the first operand relation R (by convention).

R ∪ S = S ∪ R; 
R ∩ S = S ∩ R; 
If R ≠ S then R — S ≠ S — R 

Display full details for students in Mathematics or Computing: 

SQL 

SELECT * FROM STUDENT 
  WHERE COURSE = 'Computing' UNION
  SELECT * FROM STUDENT 
    WHERE COURSE = 'Mathematics';

**RA**

σ  Course = 'Computing' (Student) ∪ σ Course = 'Mathematics' (Student)

### Example 2

Display full detail of students in Computing except first year students:

**SQL**

SELECT * FROM STUDENT
  WHERE Course = 'Computing' MINUS 
    SELECT * FROM STUDENT 
      WHERE Level = '1';
  
**SQL** 

σ  Course = 'Computing' (Student) - σ Level = 1 (Student)

## Duplicate Elimination in SQL 

According to the relational algebra theory, relations do not contain duplicated tuples. However, the result from an SQL query could contain severy identical rows. If you wish to have true relation as a result, the keyword DISTINCT should bbe specified after SELECT to indicate eliminating possible duplicates.

For Example: 

Display Unique Units which have been subscribed/ enrolled by the students: 

SELECT DISTINCT Unit
FROM STUDENT INNER JOIN ENROLMENT ON 
StudentId = SID;

