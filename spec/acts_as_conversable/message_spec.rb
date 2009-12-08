require File.dirname(__FILE__) + '/../spec_helper'

describe Message do
  before(:each) do
    @conversation = Factory(:conversation)
    @sender = Factory(:conversable_model)    
    @receiver = Factory(:conversable_model)        
    @valid_attributes = {
      :body => "the message body",
      :conversation => @conversation, 
      :sender => @sender,
      :receiver => @receiver
    }
    @message = Message.new(@valid_attributes)
  end

  it "should create a new instance given valid attributes" do
    Message.create!(@valid_attributes)
  end

  it "should not be valid without a body" do
    @message.body = nil
    @message.should_not be_valid 
  end
      
end
