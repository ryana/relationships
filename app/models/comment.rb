class Comment < ActiveRecord::Base
  belongs_to :post
end

# == Schema Information
#
# Table name: comments
#
#  id         :integer         not null, primary key
#  post_id    :integer
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#
