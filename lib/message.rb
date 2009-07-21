class Message < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :receiver, :polymorphic => true  
  belongs_to :sender, :polymorphic => true  
end
