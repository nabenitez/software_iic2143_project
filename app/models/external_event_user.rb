class ExternalEventUser < ApplicationRecord
  belongs_to :user
  belongs_to :external_event
end
