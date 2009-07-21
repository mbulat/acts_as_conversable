class Conversation < ActiveRecord::Base
  has_many :messages
  has_many :conversation_participants
  has_many :participants, :through => :conversation_participants
end
