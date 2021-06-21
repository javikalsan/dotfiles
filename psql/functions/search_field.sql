-- Description: search field in all tables of current database
-- Usage: select search_field('the_field_name_to_search')
CREATE OR REPLACE FUNCTION search_field(search_field_name varchar)
  RETURNS TABLE (table_name information_schema.sql_identifier)
  LANGUAGE plpgsql AS
$$
BEGIN
    RETURN QUERY

    SELECT t.table_name
    FROM information_schema.tables t
    INNER JOIN information_schema.columns c ON c.table_name = t.table_name
    WHERE c.column_name = search_field_name
    AND c.table_schema = t.table_schema
    AND t.table_schema NOT IN ('information_schema', 'pg_catalog')
    AND t.table_type = 'BASE TABLE'
    ORDER BY t.table_schema;
END
$$;
