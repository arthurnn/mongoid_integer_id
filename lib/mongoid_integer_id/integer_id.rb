module Mongoid
  module IntegerId
    extend ActiveSupport::Concern

    included do
      class_attribute :sequence_criteria, :sequence_collection_name
      field(
            :_id,
            default: -> { generate_next_sequence },
            pre_processed: true,
            type: Integer
            )

      self.sequence_criteria = Criteria.new.where("_id" => self.name.collectionize)
      self.auto_increment
    end


    module ClassMethods

      def auto_increment(collection_name = nil, options = {})
        self.sequence_collection_name = collection_name.try(:to_s) { |c| c.collectionize } || :sequences
      end
    end

    def generate_next_sequence
      collection = self.mongo_session[self.sequence_collection_name.to_sym]
      field_name = "seq"

      doc = collection.find(self.sequence_criteria.selector).modify({ "$inc" => { field_name => 1 }}, new: true, upsert: true)
      doc[field_name]
    end

  end
end
