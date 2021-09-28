class ItemTax < ApplicationRecord
  # Associations
  has_and_belongs_to_many :items

  # Validations
  validates :tax_name, :tax_type, :tax, presence: true
end
