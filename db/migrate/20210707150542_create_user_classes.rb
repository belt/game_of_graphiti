class CreateUserClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_classes do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :timezone
      t.text :description
      t.references :user

      t.timestamps
    end
  end
end
