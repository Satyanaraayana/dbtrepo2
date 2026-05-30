
{{
    config(
        materialized='view'
    )
}}
SELECT 
EMP_ID,
EMP_NAME,
BASIC_SALARY,
DA,
YEARS_OF_SERVICE,
FROM {{ ref('employees') }}
