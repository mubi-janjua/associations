class Developer < ApplicationRecord
  validates :team_id, uniqueness: true
  belongs_to :team

end
