class Project < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :status_changes, dependent: :destroy

  validates :title, presence: true
end
