class RemoveMatchTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :matches
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
