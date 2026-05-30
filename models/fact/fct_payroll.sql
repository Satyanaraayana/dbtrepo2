SELECT 
			emp_id,
			emp_name,
			basic_salary,
			da,
			gross_salary,
			pf,
			tax,
			gratuity,

			-- Net Salary
			(gross_salary - pf - tax) AS net_salary

		FROM {{ ref('int_salary_calculations') }}