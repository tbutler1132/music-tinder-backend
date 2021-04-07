class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.integer :first_id
      t.integer :second_id

      t.timestamps
    end
  end
end
