class Book < ApplicationRecord
	#validates :title,:author,:price,:published_date, presence: true
	validates :title,:author,:price, presence: true
end
