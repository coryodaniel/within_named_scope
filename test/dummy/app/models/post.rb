class Post < ActiveRecord::Base 
  has_many :page_views

  scope :published, -> { where(published: true) }
  scope_membership :published, as: :is_published?
end
