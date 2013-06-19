# encoding: utf-8

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :last_name
      t.string :first_name

      # t.timestamps
    end

    # create_table :users, { id: false } do |t|
    #   t.string :last_name
    #   t.string :first_name

    #   # t.timestamps
    # end

    # execute "ALTER TABLE users ADD PRIMARY KEY (uid);"
  end

  # def up
  #   create_table :users do |t|
  #     t.string :last_name
  #     t.text   :first_name

  #     # t.timestamps
  #   end
  # end

  # def down
  #   drop_table :users
  # end
end