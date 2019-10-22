class Student < ApplicationRecord
  belongs_to :university

  validates :fname, :lname, :degree, presence: true
end
