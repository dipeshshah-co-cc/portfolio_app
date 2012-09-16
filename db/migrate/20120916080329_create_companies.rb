class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :price
      t.string :symbol

      t.timestamps
    end
  end
end
