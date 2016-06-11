class User < ActiveRecord::Base

  enum role: [:admin, :user, :trainee, :author, :coach, :manager]
  after_initialize :set_default_role, :if => :new_record?
  #  persisted? instead of new_record?

  def set_default_role
    self.role ||= :user
  end

  has_many :courses
  has_many :chapters, :through => :courses
  has_many :lessons, :through => :chapters
  has_many :practices
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
end
