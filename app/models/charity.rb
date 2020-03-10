class Charity < ApplicationRecord
  belongs_to :user
  has_many :projects, dependent: :destroy
  has_one_attached :photo
end
