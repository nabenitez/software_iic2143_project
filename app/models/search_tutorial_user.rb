class SearchTutorialUser < ApplicationRecord
  belongs_to :user
  belongs_to :search_tutorial
end
