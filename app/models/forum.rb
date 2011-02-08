class Forum < ActiveRecord::Base
  belongs_to :user
  has_many :posts
end

# == Schema Information
#
# Table name: forums
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

