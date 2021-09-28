class CreateItemTaxesItems < ActiveRecord::Migration[6.0]
  def change
    create_table :item_taxes_items, id: false do |t|
      t.references :items
      t.references :item_taxes
    end
  end
end
