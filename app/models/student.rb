class Student < ApplicationRecord
  
  belongs_to :department
  belongs_to :course

  has_many :course_takings, foreign_key: :student_id, class_name: "Take"
  has_many :course_taking, through: :course_takings, source: :course
end
