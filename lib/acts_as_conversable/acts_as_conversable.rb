# ActsAsConversable
module ActiveRecord
  module Acts #:nodoc:
    module Conversable #:nodoc:
      def self.included(base)
        base.extend(ClassMethods)
      end
    end

    module ClassMethods
      def acts_as_conversable
        has_many :conversation_participants, :as => :participant
        has_many :conversations, :through => :conversation_participants     

        has_many :sent_messages, :class_name => 'Message', :as => :sender
        has_many :received_messages, :class_name => 'Message', :as => :receiver
      end
    end
  end
end
