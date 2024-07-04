Create database Bank_loan_project;

select * from finance_1;
select * from finance_2;

select year (issue_d) as Year_of_issue_d, sum(loan_amnt) as Total_loan_amnt
from finance_1
group by year_of_issue_d
order by year_of_issue_d;

select grade, sub_grade , sum(revol_bal) as total_revol_bal
from finance_1 inner join finance_2
on(finance_1.id = finance_2.id)
group by grade , sub_grade
order by grade , sub_grade;

select verification_status,
concat("$", format(round(sum(total_payment)/1000000,2),2), "M") as total_payment

from finance_1 inner join finance_2
on (finance_1.id = finnace_2.id)
group by verification_status ;

select addr_state, last_credit_pull_D, loan_status
from finance_1 inner join finance_2
on (finance_1.id = finance_2. id)
group by addr_state, last_credit_pull_D, loan_status
order by last_credit_pull_D;

select
home_ownership,
last_payment_d,
concat('$', format(Round(sum(last_payment_amount)/1000,2),2), 'k') as total_amount
from 
finance_1
Inner Join
 finance_2 on finance_1. id = finance_2.id
 group by
 home_ownership, last_payment_d
 order by
 last_payment_d Desc, home_ownership Desc;



/*
> Year wise loan amount
> Grade sub-grade wise revolution balance
> Total Payment for Verified status Vs Non-verified status
> State wise Last credit pull_d Wise loan status
> Home ownership Vs Last payment Date stats.

