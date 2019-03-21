class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def commented_posts
    self.comments.map(&:post).uniq
  end
end
