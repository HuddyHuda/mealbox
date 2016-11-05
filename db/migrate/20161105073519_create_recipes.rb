class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.references :cookbook, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
