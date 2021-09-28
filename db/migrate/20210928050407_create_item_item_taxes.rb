class CreateItemItemTaxes < ActiveRecord::Migration[6.0]
  def change
    create_table :item_item_taxes, id: false do |t|
      t.references :items
      t.references :item_taxes
    end
  end
end
