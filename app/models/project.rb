class Project < ApplicationRecord
  belongs_to :charity
  has_one_attached :photo
  has_one_attached :file
end
