class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :major, presence: true
  validates :expected_graduation_date, presence: true
  # validates :school_email, presence: true
  # validates :school_email, uniqueness: true
  has_one_attached :profile_picture
  # validate :school_email_format

  validate :email_format
  def email_format
    unless email =~ /\A[\w+\-.]+@msudenver\.edu\z/i
      errors.add(:email, "must be an @msudenver.edu email address")
    end
  end


  def acceptable_image
    return unless profile_picture.attached?

    unless profile_picture.blob.byte_size <= 1.megabyte
      errors.add(:profile_picture, "is too big")
    end

    acceptable_types = ["image/jpeg", "image/png"]
    unless acceptable_types.include?(profile_picture.content_type)
      errors.add(:profile_picture, "must be a JPEG or PNG")
    end

  end

  VALID_MAJORS = ["Computer Engineering BS", "Computer Information Systems BS",
                  "Computer Science BS", "Cybersecurity Major", "Data Science and Machine Learning Major"]

  validates :major, inclusion: { in: VALID_MAJORS, message: "%{value} is not a valid major" }


end
