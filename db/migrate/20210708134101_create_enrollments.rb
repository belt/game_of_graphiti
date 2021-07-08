class CreateEnrollments < ActiveRecord::Migration[6.1]
  def change
    create_table :enrollments do |t|
      t.references :user
      t.references :user_class

      t.timestamps
    end
    add_index :enrollments, %i[user_id user_class_id], unique: true
  end
end
