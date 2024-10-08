class Student < ApplicationRecord

  validates :first_name, :last_name, :school_email, :major, :expected_graduation_date, presence: true
  validate :school_email_format

  def school_email_format
    unless school_email =~ /\A[\w+\-.]+@msudenver\.edu\z/i
      errors.add(:school_email, "must be an @msudenver.edu email address")
    end
  end

end
