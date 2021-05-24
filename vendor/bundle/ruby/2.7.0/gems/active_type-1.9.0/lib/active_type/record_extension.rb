require 'active_type/record_extension/inheritance'

module ActiveType

  module RecordExtension

    extend ActiveSupport::Concern

    module ClassMethods

      def [](base)
        Class.new(base) do

          include VirtualAttributes
          include NestedAttributes
          include Inheritance
          include ChangeAssociation

          self.extended_record_base_class = base
        end
      end

    end

  end

end
