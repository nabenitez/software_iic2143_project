class ExternalEvent < ApplicationRecord
  has_many :external_event_users
  has_many :users, through: :external_event_users
  belongs_to :study_room
end
