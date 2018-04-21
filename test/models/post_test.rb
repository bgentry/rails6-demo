require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should not save a post without a title" do
    post = Post.new
    assert_not post.save
  end
end
