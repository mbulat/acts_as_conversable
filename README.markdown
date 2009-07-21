ActsAsConversable
=================

This acts_as_conversable plugin provides mixin conversation functionality for any model.

Installation
============

- install plugin `script/plugin install git://github.com/mbulat/acts_as_conversable.git`
- generate migration files `/script/generate conversable`
- run migrations `rake db:migrate`

Example
=======

    class User < ActiveRecord::Base
      acts_as_conversable
    end

Starting a conversation
-----------------------
Generate some users that want to converse (these are whatever model(s) you mark acts_as_conversable)

    @user_one = User.new(:name => 'George')
    @user_one.save
    @user_two = User.new(:name => 'Gracie')
    @user_two.save

Create a conversation

    @conversation = Conversation.new(:subject => 'This weekend')
    @conversation.save

Invite users to participate in the conversation

    @conversation_participant_one = ConversationParticipant.new(:conversation => @conversation, :participant => @user_one)
    @conversation_participant_one.save
    @conversation_participant_two = ConversationParticipant.new(:conversation => @conversation, :participant => @user_two)
    @conversation_participant_two.save

List conversations your users are a part of

    >> @user_one.conversations
    => [#<Conversation id: 1, subject: "This weekend", created_at: "2009-07-21 16:47:50", updated_at: "2009-07-21 16:47:50">]

Sending messages
----------------

Create a message within a conversation, and choose the message sender and the recipient

    @message = Message.new(:conversation => @conversation, :body => "Let's go for a hike.", :sender => @user_one, :receiver => @user_two)
    @message.save
    
List a user's sent messages 
  
    >> @user_one.sent_messages
    => [#<Message id: 1, conversation_id: 1, subject: nil, body: "Let's go for a hike.", sender_id: 1, sender_type: "User", receiver_id: 2, receiver_type: "User", created_at: "2009-07-21 17:23:22", updated_at: "2009-07-21 17:23:22">]

List a user's received messages

    >> @user_two.received_messages
    => [#<Message id: 1, conversation_id: 1, subject: nil, body: "Let's go for a hike.", sender_id: 1, sender_type: "User", receiver_id: 2, receiver_type: "User", created_at: "2009-07-21 17:23:22", updated_at: "2009-07-21 17:23:22">]

List all the message for a given user's conversation

    >> @user_one.conversations[0].messages
    [#<Message id: 1, conversation_id: 1, subject: nil, body: "Let's go for a hike.", sender_id: 1, sender_type: "User", receiver_id: 2, receiver_type: "User", created_at: "2009-07-21 17:23:22", updated_at: "2009-07-21 17:23:22">, #<Message id: 2, conversation_id: 1, subject: nil, body: "Sounds like a date!", sender_id: 2, sender_type: "User", receiver_id: 1, receiver_type: "User", created_at: "2009-07-21 17:54:14", updated_at: "2009-07-21 17:54:14">]

Copyright (c) 2009 Michael Bulat, released under the MIT license
