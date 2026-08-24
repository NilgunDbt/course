{{
	config(
		materialized = 'table'
	)
}}
WITH src_hosts AS (
	SELECT * FROM {{ ref('src_hosts') }}
)
SELECT
HOST_ID,
nvl(HOST_NAME,'N/A') AS HOST_NAME,
IS_SUPERHOST,
CREATED_AT,
UPDATED_AT
FROM src_hosts