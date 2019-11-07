class Account < ApplicationRecord
  validates :supplier_id, uniqueness: true	
  belongs_to :supplier
  has_one :accounthistroy
end
