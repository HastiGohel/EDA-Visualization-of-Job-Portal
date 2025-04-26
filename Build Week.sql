create database jobs;
use jobs;
select * from jobdata;

# 1. Most common job titles
select title, count(*) as job_count from jobdata group by title order by job_count desc limit 10;

# 2. Count of jobs per location
select location, count(*) as job_count from jobdata group by location order by job_count desc;
 
# 3. Jobs with salaries greater than 1LPA$ 
select * from jobdata where expected_salary is not null and expected_salary != 'Not disclosed'  and expected_salary > 100000;

# 4. Most frequently hiring companies.
select company, count(*) as job_count from jobdata group by company order by job_count desc limit 10;

# 5. top 5 highest max salary jobs
select title, company, max_salary from jobdata order by max_salary desc limit 5;

# 6. average expected salary by location
select location, avg(expected_salary) as avg_expected from jobdata group by location;

# 7. jobs where salary range is very wide (difference > 50000)
select title, company, min_salary, max_salary from jobdata where max_salary - min_salary > 50000;

# 8. jobs with word 'data' in the title
select title, company from jobdata where lower(title) like '%data%';

# 9. count of jobs per company
select company, count(*) as job_count from jobdata group by company order by job_count desc;

# 10. jobs located in remote or hybrid roles
select title, company, location from jobdata where lower(location) like '%remote%' or lower(location) like '%hybrid%';

# 11. jobs with expected salary higher than the overall average expected salary
select title, company, expected_salary from jobdata where expected_salary > (select avg(expected_salary) from jobdata);

# 12. companies offering the maximum salary in the dataset
select title, company, max_salary from jobdata where max_salary = (select max(max_salary) from jobdata);

# 13. jobs with salary range above the average salary range
select title, company, min_salary, max_salary from jobdata where (max_salary - min_salary) > (select avg(max_salary - min_salary) from jobdata );

# 14. jobs posted on the most recent posted_date
select title, company, posted_date from jobdata where posted_date = (select max(posted_date) from jobdata );

# 15. locations having more jobs than the average number of jobs per location
select location from jobdata group by location having count(*) > (select avg(job_count) from (select count(*) as job_count from jobdata group by location) as subquery);

# 16. find jobs where expected salary is above the average expected salary using a CTE
with avg_salary_cte as (select avg(expected_salary) as avg_expected from jobdata)
select title, company, expected_salary from jobdata, avg_salary_cte where expected_salary > avg_salary_cte.avg_expected;

# 17. list companies that have more than 3 job listings
with job_counts as (select company, count(*) as total_jobs from jobdata group by company)
select company, total_jobs from job_counts where total_jobs > 3;

# 18. rank jobs by max salary within each location
select title, company, location, max_salary, rank() over (partition by location order by max_salary desc) as salary_rank from jobdata;

# 19. calculate average expected salary over all jobs and show difference for each row
select title, company, expected_salary,avg(expected_salary) over () as overall_avg,expected_salary - avg(expected_salary) over () as diff_from_avg from jobdata;

# 20. Cumulative Sum of Max Salaries by Job Posting Date
select title, company, posted_date, max_salary, sum(max_salary) over (order by posted_date rows between unbounded preceding and current row) as cumulative_salary from jobdata;
