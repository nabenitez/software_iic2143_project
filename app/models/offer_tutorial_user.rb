class OfferTutorialUser < ApplicationRecord
  belongs_to :user
  belongs_to :offer_tutorial
end
