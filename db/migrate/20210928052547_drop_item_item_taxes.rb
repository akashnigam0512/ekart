class DropItemItemTaxes < ActiveRecord::Migration[6.0]
  def change
    drop_table :item_item_taxes
  end
end
