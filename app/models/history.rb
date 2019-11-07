class History < ApplicationRecord
  validates :account_id, uniqueness: true		
  belongs_to :account
end
