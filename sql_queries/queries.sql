-- уровень текучести по отделам
select 
    department,
    count(*) as total_employees,
    sum(case when attrition = 'Yes' then 1 else 0 end) as attrition_count,
    round(sum(case when attrition = 'Yes' then 1 else 0 end) * 100.0 / count(*), 2) as attrition_rate
from clean_hr_data
group by department
order by attrition_rate desc;

-- влияние стажа на текучесть
select 
    yearsatcompany,
    count(*) as employees,
    round(sum(case when attrition = 'Yes' then 1 else 0 end) * 100.0 / count(*), 2) as attrition_rate
from clean_hr_data
group by yearsatcompany
order by yearsatcompany;

-- связь зарплаты и текучести
select 
    case 
        when monthlyincome < 5000 then 'низкая'
        when monthlyincome < 10000 then 'средняя'
        else 'высокая'
    end as salary_level,
    count(*) as employees,
    round(sum(case when attrition = 'Yes' then 1 else 0 end) * 100.0 / count(*), 2) as attrition_rate
from clean_hr_data
group by salary_level
order by attrition_rate desc;

-- профиль уволившегося сотрудника
select 
    avg(age) as avg_age,
    avg(yearsatcompany) as avg_tenure,
    avg(monthlyincome) as avg_salary,
    gender,
    education
from clean_hr_data
where attrition = 'Yes'
group by gender, education;