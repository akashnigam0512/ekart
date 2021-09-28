class Item < ApplicationRecord
  # Associations
  belongs_to :item_category

  has_and_belongs_to_many :item_taxes

  # Validations
  validates :name, :rate, presence: true
end
