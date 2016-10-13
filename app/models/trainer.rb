class Trainer < ApplicationRecord
	has_many :tokimons, dependent: :destroy
	validates :name, presence: true, length: { maximum: 20 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX },
				uniqueness: { case_sensitive: false}
	validates :age, presence: true, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100 }
	validates :height, presence: true, length: { maximum: 20 }
	validates :weight, presence: true, length: { maximum: 20 }
	
	validates :address, presence: true, length: { maximum: 100 }





end
