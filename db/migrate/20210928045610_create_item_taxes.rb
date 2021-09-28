class CreateItemTaxes < ActiveRecord::Migration[6.0]
  def change
    create_table :item_taxes do |t|
      t.string :tax_name
      t.string :tax_type
      t.decimal :tax

      t.references :items, foreign_key: true
      t.timestamps
    end
  end
end
