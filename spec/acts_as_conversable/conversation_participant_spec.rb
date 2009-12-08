require File.dirname(__FILE__) + '/../spec_helper'

describe ConversationParticipant do
  before(:each) do
    @valid_attributes = {
      :conversation => Factory(:conversation),
      :participant => Factory(:conversable_model)
    }
    @conversation_participant = ConversationParticipant.new(@valid_attributes)
  end

  it "should create a new instance given valid attributes" do
    ConversationParticipant.create!(@valid_attributes)
  end
  
  it "should not be valid without a conversation" do
    @conversation_participant.conversation = nil
    @conversation_participant.should_not be_valid 
  end

  it "should not be valid without a participant" do
    @conversation_participant.participant = nil
    @conversation_participant.should_not be_valid 
  end
    
end
