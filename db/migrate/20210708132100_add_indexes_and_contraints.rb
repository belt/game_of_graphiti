class AddIndexesAndContraints < ActiveRecord::Migration[6.1]
  def change
    add_index :users, %i[last_name first_name]
    add_index :users, :email, unique: true
    change_column_null :users, :first_name, false
    change_column_null :users, :last_name, false
    change_column_null :users, :email, false

    add_index :user_classes, :name
    add_index :user_classes, %i[start_date end_date timezone]
    change_column_null :user_classes, :name, false
    change_column_null :user_classes, :start_date, false
    change_column_null :user_classes, :end_date, false
    change_column_null :user_classes, :timezone, false
  end
end
