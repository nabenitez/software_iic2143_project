class StudyGroup < ApplicationRecord
  has_many :study_group_users
  has_many :users, through: :study_group_users
  belongs_to :study_room
end
