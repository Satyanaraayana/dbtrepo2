SELECT 
			emp_id,
			emp_name,
			basic_salary,
			da,
			years_of_service,

			-- Gross Salary
			(basic_salary + da) AS gross_salary,

			-- PF
			{{ calculate_pf('basic_salary') }} AS pf,

			-- Tax
			{{ calculate_tax('basic_salary + da') }} AS tax,

			-- Gratuity
			{{ calculate_gratuity('basic_salary', 'da', 'years_of_service') }} AS gratuity

		FROM {{ ref('stg_employees') }}