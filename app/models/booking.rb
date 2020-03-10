class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :project

  after_save :delete_like

  def delete_like
    Like.where(user: self.user, project: self.project).first.destroy
  end
end
