class User < ApplicationRecord
  attr_accessor :login

  pay_customer

has_person_name

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   def self.find_for_database_authentication warden_condition
    conditions = warden_condition.dup
    login = conditions.delete(:login)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", {value: login.strip.downcase}]).first
   end

  #  Define roles
   enum role: [:default, :student, :instructor, :admin]

  #  Initialize new user with a default role 
   after_initialize :set_default_role, :if => :new_record?
    def set_default_role
      self.role ||= :default
    end

    # through table association for instructor teaches course
    has_many :course_teachings, foreign_key: :user_id, class_name: "Teach"
    has_many :teaching_courses, through: :course_teachings, source: :course
end
