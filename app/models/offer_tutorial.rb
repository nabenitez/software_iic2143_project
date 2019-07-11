class OfferTutorial < ApplicationRecord
  has_many :offer_tutorial_users
  has_many :users, through: :offer_tutorial_users
  belongs_to :study_room
end
