Within Named Scope
====================

A simple gem for drying up checking if an ActiveRecord instance is within a named scope.

Support for Rails 3.2+ and 4.0+

Usage
---------------------

Using the 'in_scope?' method:

```ruby
class Post < ActiveRecord::Base
  scope :published, -> { where(published: true)}
end

Post.first.in_scope? :published
```

Adding a named method:

```ruby
class Post < ActiveRecord::Base
  scope :published, -> { where(published: true)}
  
  # Would default to published?
  scope_membership :published, as: :is_published?
end

Post.first.is_published?
```


Authors
---------------------

  * Cory ODaniel
