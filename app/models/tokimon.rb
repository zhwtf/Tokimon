class Tokimon < ApplicationRecord
	belongs_to :trainer
	validates :name, presence: true, length: { maximum: 20 }
	validates :height, presence: true, length: { maximum: 4 }
	validates :weight, presence: true, length: { maximum: 4 }
	validates :fire, presence: true, length: { maximum: 4 }
	validates :fight, presence: true, length: { maximum: 4 }
	validates :fly, presence: true, length: { maximum: 4 }
	validates :water, presence: true, length: { maximum: 4 }
	validates :electric, presence: true, length: { maximum: 4 }
	validates :frozon, presence: true, length: { maximum: 4 }
	validates :trainer_id, presence: true
	
end
