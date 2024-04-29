class Student < ApplicationRecord
  belongs_to :standard
  has_many :student_teacher_relationships
  has_many :teachers, through: :student_teacher_relationships

  validate :name, presence: true
  validates :address, presence: true
end
