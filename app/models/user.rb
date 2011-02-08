class User < ActiveRecord::Base
  has_many :forums
  has_many :posts, :through => :forums

  def comments
    Comment.where(:post_id => posts.map(&:id))
  end

end

# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  email      :string(255)
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

