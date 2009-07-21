class ConversationParticipant < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :participant, :polymorphic => true 
end