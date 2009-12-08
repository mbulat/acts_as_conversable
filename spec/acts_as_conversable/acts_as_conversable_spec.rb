require File.dirname(__FILE__) + '/../spec_helper'

describe "Acts As Conversable" do
  before(:each) do
    @conversable = Factory(:conversable_model)    
  end  
  
  it "should create an association for conversation participants" do
    @conversable.should respond_to(:conversation_participants)
  end

  it "should create an association for conversations" do
    @conversable.should respond_to(:conversations)
  end

  it "should create an association for sent messages" do
    @conversable.should respond_to(:sent_messages)
  end

  it "should create an association for received messages" do
    @conversable.should respond_to(:received_messages)
  end

end