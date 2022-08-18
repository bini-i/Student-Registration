class Teach < ApplicationRecord
  belongs_to :instructor
  belongs_to :course
end
