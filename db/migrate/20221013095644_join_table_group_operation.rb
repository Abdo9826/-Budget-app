class JoinTableGroupOperation < ActiveRecord::Migration[7.0]
  def change
    create_join_table :groups, :operations do |t|
      t.index :group_id
      t.index :operation_id
    end
  end
end
