class Message < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :receiver, :polymorphic => true  
  belongs_to :sender, :polymorphic => true  
  
  validates_presence_of :conversation
  validates_presence_of :receiver
  validates_presence_of :sender      
  validates_presence_of :body
end
