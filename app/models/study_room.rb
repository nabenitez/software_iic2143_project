class StudyRoom < ApplicationRecord
  has_many :study_groups
  has_many :offer_tutorials
  has_many :external_events
  has_many :search_tutorials
  has_many :room_evaluations
  has_many :users, through: :room_evaluations
end
