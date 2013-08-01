require 'test_helper'
 
class WithinNamedScopeTest < ActiveSupport::TestCase
  def test_a_post_should_be_within_published_scope
    assert_equal true, Post.first.in_scope?(:published)
    assert_equal true, Post.first.is_published?
    assert_equal false, Post.last.in_scope?(:published)
    assert_equal false, Post.last.is_published?
  end
end