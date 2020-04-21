
def put_many(table_name, row, column_values)
    column_values.each do |key, value|
        put table_name, row, key, value
        end
    end