class Post < ApplicationRecord

	belongs_to :user
	has_many :comments

	def upvote
		self.score += 1
		self.save
	end

	def downvote
		self.score -= 1
		self.save
	end

end
