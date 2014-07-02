class Restaurant < ActiveRecord::Base
	validates :name, presence: true
	validates :cuisine, presence: true
	has_many :reviews

	def average_rating
    return 'N/A' if reviews.none?
    reviews.average(:rating)
  end

end
