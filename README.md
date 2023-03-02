It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.


# Data Modeling
Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables.

![image](https://user-images.githubusercontent.com/118771610/222335474-585cdf38-62fa-442e-bc7c-a50c0c89847f.png)


# Data Engineering

1.Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

  Remember to specify the data types, primary keys, foreign keys, and other constraints.
  Be sure to create the tables in the correct order to handle the foreign keys.
  
  
2.Import each CSV file into its corresponding SQL table.


# Data Analysis

3.List the employee number, last name, first name, sex, and salary of each employee.

4.List the first name, last name, and hire date for the employees who were hired in 1986.

5.List the manager of each department along with their department number, department name, employee number, last name, and first name.

6.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

7.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

8.List each employee in the Sales department, including their employee number, last name, and first name.

9.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

10.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
