class Student < ApplicationRecord

  validates :first_name, :last_name, :school_email, :major, :expected_graduation_date, presence: true
end
