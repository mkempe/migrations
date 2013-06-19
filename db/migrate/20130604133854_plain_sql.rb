# encoding: utf-8

class PlainSql < ActiveRecord::Migration
  def up
    execute "INSERT INTO users (last_name, first_name, description) VALUES ('Doe', 'John', 'John Doe');"
    # execute "INSERT INTO users (last_name, first_name, description) VALUES ('Roos', 'Bob', 'Bob Roos');"
    # execute "INSERT INTO users (last_name, first_name, description) VALUES ('Presley', 'Elvis', 'Elvis Presley');"
  end

  def down
    execute "DELETE FROM users WHERE last_name = 'Doe' AND first_name = 'John';"
    # execute "DELETE FROM users WHERE last_name = 'Roos' AND first_name = 'Bob';"
    # execute "DELETE FROM users WHERE last_name = 'Presley' AND first_name = 'Elvis';"
  end
end