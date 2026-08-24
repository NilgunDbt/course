{% macro learn_variables() %}


	{% set your_name_jinja = "Nilgun"%}
	{{ log("Hello "~ your_name_jinja, info=True)}}

	{{ log("Hello dbt user " ~ var("user_name", "NO USERNAME IS SET!") ~ "!", info=True)}}
	--dbt run-operation learn_variables --vars '{user_name: Nilgun}'
	--NO USERNAME IS SET! is a default value
{% endmacro %}
