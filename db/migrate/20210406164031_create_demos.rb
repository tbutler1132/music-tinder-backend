class CreateDemos < ActiveRecord::Migration[6.1]
  def change
    create_table :demos do |t|
      t.string :title

      t.timestamps
    end
  end
end
