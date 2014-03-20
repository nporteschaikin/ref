# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140320150425) do

  create_table "answers", :force => true do |t|
    t.integer  "question_id"
    t.integer  "book_id"
    t.integer  "user_id"
    t.string   "body"
    t.integer  "likes_count", :default => 0, :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "answers", ["book_id"], :name => "index_answers_on_book_id"
  add_index "answers", ["question_id"], :name => "index_answers_on_question_id"
  add_index "answers", ["user_id"], :name => "index_answers_on_user_id"

  create_table "assets", :force => true do |t|
    t.string   "type"
    t.integer  "attached_id"
    t.string   "attached_type"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "assets", ["attached_id", "attached_type"], :name => "index_assets_on_attached_id_and_attached_type"

  create_table "books", :force => true do |t|
    t.string   "isbn"
    t.string   "title"
    t.string   "author"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "channels", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at"
  end

  create_table "comments", :force => true do |t|
    t.integer  "commented_id"
    t.string   "commented_type"
    t.integer  "user_id"
    t.text     "body"
    t.integer  "likes_count",    :default => 0, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "comments", ["commented_id", "commented_type"], :name => "index_comments_on_commented_id_and_commented_type"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "likes", :force => true do |t|
    t.integer  "liked_id"
    t.string   "liked_type"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "likes", ["liked_id", "liked_type"], :name => "index_likes_on_liked_id_and_liked_type"
  add_index "likes", ["user_id"], :name => "index_likes_on_user_id"

  create_table "questions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "channel_id"
    t.string   "title"
    t.text     "body"
    t.integer  "likes_count", :default => 0, :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "questions", ["channel_id"], :name => "index_questions_on_channel_id"
  add_index "questions", ["user_id"], :name => "index_questions_on_user_id"

  create_table "relationships", :force => true do |t|
    t.integer  "followed_id"
    t.string   "followed_type"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "relationships", ["followed_id", "followed_type"], :name => "index_relationships_on_followed_id_and_followed_type"
  add_index "relationships", ["user_id"], :name => "index_relationships_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "handle"
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "date_of_birth"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
