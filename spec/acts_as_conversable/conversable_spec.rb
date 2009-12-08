require File.dirname(__FILE__) + '/../spec_helper'

describe Conversation do
  before(:each) do
    @valid_attributes = {
      :subject => "value for subject"
    }
    @conversation = Conversation.new(@valid_attributes)
  end

  it "should create a new instance given valid attributes" do
    Conversation.create!(@valid_attributes)
  end
  
  it "should not be valid without a subject" do
    @conversation.subject = nil
    @conversation.should_not be_valid 
  end
  
  it "should create an association for conversation participants" do
    @conversation.should respond_to(:conversation_participants)
  end
  
end
