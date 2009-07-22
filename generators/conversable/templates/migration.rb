class Conversable < ActiveRecord::Migration
  def self.up
    create_table :conversations do |t|
      t.string :subject
      t.timestamps
    end
    
    create_table :conversation_participants do |t|
      t.integer :conversation_id
      t.integer :participant_id
      t.string :participant_type
      t.timestamps
    end    

    create_table :messages do |t|
      t.integer :conversation_id
      t.text :body
      t.integer :sender_id
      t.string :sender_type
      t.integer :receiver_id
      t.string :receiver_type
      t.timestamps
    end
  end
  
  def self.down
    drop_table :conversations
    drop_table :conversation_participants   
    drop_table :messages 
  end
end
