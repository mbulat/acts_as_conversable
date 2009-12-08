ActiveRecord::Schema.define :version => 0 do  
  create_table "conversation_participants", :force => true do |t|
    t.integer  "conversation_id"
    t.integer  "participant_id"
    t.string   "participant_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conversations", :force => true do |t|
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.integer  "conversation_id"
    t.string   "subject"
    t.string   "body"
    t.integer  "sender_id"
    t.string   "sender_type"
    t.integer  "receiver_id"
    t.string   "receiver_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table :conversable_models, :force => true do |t|
    t.column :name, :string
  end

  create_table :other_taggable_models, :force => true do |t|
    t.column :name, :string
  end
end