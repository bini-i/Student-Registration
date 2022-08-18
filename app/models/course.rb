class Course < ApplicationRecord
  belongs_to :department

  has_many :courses_teachings, foreign_key: :course_id, class_name: "Teach"
  has_many :instructor, through: :courses_teachings, source: :instructor

  has_many :course_takings, foreign_key: :course_id, class_name: "Take"
  has_many :students_taking_course, through: :course_takings, source: :student
end
