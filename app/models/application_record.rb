# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  class << self
    def attribute_keys
      attribute_names.map(&:to_sym)
    end
  end
end
