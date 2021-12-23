class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def serializer
    "#{self.class.name}Serializer".constantize
  end

  def fast_json
    serializer.new(self).as_json
  end
end
