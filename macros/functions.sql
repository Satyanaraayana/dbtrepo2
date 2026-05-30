--calculate_gratuity
{% macro calculate_gratuity(basic, da, years) %}
			CASE 
				WHEN {{ years }} >= 5 
				THEN ROUND((15 * ({{ basic }} + {{ da }}) * {{ years }}) / 26, 2)
				ELSE 0
			END
		{% endmacro %}

--PF (Provident Fund) Macro 	PF = 12% of basic salary

		{% macro calculate_pf(basic) %}
			ROUND({{ basic }} * 0.12, 2)
		{% endmacro %}

--Tax Macro (Simple Slab)
		{% macro calculate_tax(salary) %}
			CASE 
				WHEN {{ salary }} <= 25000 THEN 0
				WHEN {{ salary }} <= 50000 THEN {{ salary }} * 0.10
				ELSE {{ salary }} * 0.20
			END
		{% endmacro %}
    
