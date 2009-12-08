class ConversationParticipant < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :participant, :polymorphic => true 

  validates_presence_of :conversation
  validates_presence_of :participant  
end