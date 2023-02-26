class AddForeignKeyGroupsToEntities < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :group_id, :integer
    add_foreign_key :entities, :groups
  end
end
