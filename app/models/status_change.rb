class StatusChange < ApplicationRecord
  belongs_to :project

  validates :previous_status, :new_status, presence: true
end
