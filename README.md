# Pewlett Hackard Analysis

## Purpose
The purpose of this analysis was to compile the number of workers reaching retirement age at Pewlett Hackard as well as other statistics surrounding that, including their official work title, their birth dates, and their active work dates. Then, I used these data to determine which employees were eligible for a mentorship program. The goal of gathering this information is to help the company prepare for the "silver tsunami," or the collective retirement of many employees at once. The company will use this data to identify how many employees, as well as the title that they hold, will be retiring in the upcoming years.


## Results
- With our [retirement_titles.csv](https://github.com/kfelds1/Pewett-Hackard-Analysis/files/10050699/retirement_titles.csv) table, I was able to see all employees at the company that were born between 1952 and 1955, which would mean that they are eligible for retirement. However, the issue is that some of these employees do not work at the company anymore. This is why we created the [unique_titles.csv](https://github.com/kfelds1/Pewett-Hackard-Analysis/files/10050706/unique_titles.csv) table, which has a condition to ensure that they employee still works at Pewlett Hackard.

- After creating the [retiring_titles.csv](https://github.com/kfelds1/Pewett-Hackard-Analysis/files/10050698/retiring_titles.csv)
table, I was able to see which titles would have the most retiring employees and vice versa. It is evident that the senior positions will have the highest amount of retirees, as seen below. Additionally, staff and engineer positions at the company will also have a high demand as well once the employees retire. It is interesting to see that the manager position only has two upcoming retirees.

![Screen Shot 2022-11-20 at 11 09 28 AM](https://user-images.githubusercontent.com/112633146/202912847-419ec64f-43c0-4032-82db-eb32658dec8b.png)

- When compiling data for all of the retirees in the next several years, there are 133,776 rows of data before eliminating duplicates. 

![Screen Shot 2022-11-20 at 4 01 39 PM](https://user-images.githubusercontent.com/112633146/202926079-6be22b11-3ff1-46f7-a767-6664cea492e9.png)

We wanted to eliminate duplicates so we could see the most current title that the employee has. Lots of employees held different titles throughout the year due to department changes, promotions, etc. After eliminating duplicates, there are 72,458 rows of data.

![Screen Shot 2022-11-20 at 4 01 52 PM](https://user-images.githubusercontent.com/112633146/202926110-19cc01fe-52fd-4a40-af0d-9664c0ff1f49.png)

- While briefly looking through the [mentorship_eligibility.csv](https://github.com/kfelds1/Pewett-Hackard-Analysis/files/10050638/mentorship_eligibility.csv) table, the title that continues to show up is senior staff. When calculating the counts of each title more carefully, this is true, along with the engineer title being prominent as well.

![Screen Shot 2022-11-20 at 3 45 59 PM](https://user-images.githubusercontent.com/112633146/202925261-3d6fde72-96b2-4904-9d60-f61bc14855a9.png)


## Summary
_How many roles will need to be filled as the "silver tsunami" begins to make an impact?_
This information can be found by applying the "count" command on the unique titles table. As explained previously, the unique titles table contains the current Pewlett Hackard employees which were born between 1952 and 1955, meaning they will be eligible for retirement shortly. We separate those employees by title to see how many upcoming retirees there are per title. This would give Pewlett Hackard a better sense of what types of positions they will need to hire for rather than just the number of employees across the whole company.

![Screen Shot 2022-11-20 at 4 25 13 PM](https://user-images.githubusercontent.com/112633146/202926975-f9d83cab-b9ec-464a-9887-379ed59ff70c.png)

_Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?_
To determine if the mentorship program would be a success, the "count" command once again can be applied on the mentorship eligibility table. By separating these eligible employees by title, we get the following table.

![Screen Shot 2022-11-20 at 4 29 22 PM](https://user-images.githubusercontent.com/112633146/202927152-543ee011-52a8-4c88-9834-aeda5c0e79e8.png)

The number of eligible employees that could partake in the mentorship program is significantly less than the number of positions that Pewlett Hackard will need to fill. It doesn't seem that the mentorship program could work in this case, as each employee would have to mentor and be responsible for too many new employees. 

Extending the birth date condition in the mentorship eligibility table to include employees born in 1964 in addition to 1965 yields a much higher amount of employee to take part in the mentorship program. This would allow for each mentor to have less mentees, in turn allowing the mentor to put more effort into each mentee.

![Screen Shot 2022-11-20 at 4 40 17 PM](https://user-images.githubusercontent.com/112633146/202927631-d83b7907-25ed-47da-92b6-f253fa12b288.png)


