class Book < ApplicationRecord
	has_many :users, through: :user_books
	has_many :user_books
	
	validates :title, presence: true
	validates :author,:published_date, presence: true
	validates :price, numericality: { greater_than_or_equal_to: 0 }
	#validates_date :published_date, date: {before: Date.today}
	#validates :published_date, timeliness: { on_or_before: lambda { Date.current }, type: :date }

	#validates :title,:author,:price, presence: true
end
