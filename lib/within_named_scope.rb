module WithinNamedScope
  extend ActiveSupport::Concern

  included do
  end

  def in_scope?(scope)
    !!self.class.send(scope.to_sym).exists?(self.id)
  end

  module ClassMethods
    def scope_membership(scope_name, options={})
      class_eval <<-eoruby, __FILE__, __LINE__ + 1
        def #{(options[:as] || "#{scope_name}?").to_sym}()
          in_scope? :#{scope_name}
        end
      eoruby
    end
  end
end

ActiveRecord::Base.send :include, WithinNamedScope