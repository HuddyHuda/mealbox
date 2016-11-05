class CreateCookbooks < ActiveRecord::Migration[5.0]
  def change
    create_table :cookbooks do |t|
      t.string :name
      t.string :cuisine

      t.timestamps
    end
  end
end
