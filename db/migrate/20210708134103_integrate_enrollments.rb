class IntegrateEnrollments < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_classes, :user_id, :integer
  end
end
