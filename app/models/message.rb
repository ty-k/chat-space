class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user

  mount_uploader :image, ImageUploader
  
  validates :content, presence: true, unless: :image?
  # def show_last_message
  #   if (group = current-group).present?
  #     if group.content?
  #       group.content
  #   end
end