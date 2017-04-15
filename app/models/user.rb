class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true

  has_many :taught_classrooms, class_name: "Classroom", foreign_key: "teacher_id"
  has_many :assigned_classrooms, class_name: "Classroom", foreign_key: "student_id"
end
