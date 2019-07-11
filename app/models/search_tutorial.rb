class SearchTutorial < ApplicationRecord
  has_many :search_tutorial_users
  has_many :users, through: :search_tutorial_users
  belongs_to :study_room
end
