class User < ApplicationRecord
  resourcify
  rolify
  after_create :assign_default_role

  def assign_default_role
    self.add_role(:admin) if self.roles.blank?
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, :presence => true, :email => true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # events association
  has_many :study_group_users
  has_many :study_groups, through: :study_group_users

  has_many :external_event_users
  has_many :external_events, through: :external_event_users

  has_many :offer_tutorial_users
  has_many :offer_tutorials, through: :offer_tutorial_users

  has_many :search_tutorial_users
  has_many :search_tutorials, through: :search_tutorial_users

  mount_uploader :picture, PictureUploader

  has_many :room_evaluations
  has_many :study_rooms, through: :study_groups
  # courses relation
  has_many :course_users
  has_many :courses, through: :course_users

end
