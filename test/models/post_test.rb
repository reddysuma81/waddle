# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  header       :string
#  tag_line     :string
#  image        :string
#  body         :text
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  state        :string           default("unpublished")
#  user_id      :integer
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
