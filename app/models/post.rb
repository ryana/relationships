class Post < ActiveRecord::Base
  belongs_to :forum
  has_many :comments
end

# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  forum_id   :integer
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

