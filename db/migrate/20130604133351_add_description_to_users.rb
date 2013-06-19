# encoding: utf-8

class AddDescriptionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :description, :text
  end

  # def up
  #   add_column :users, :description, :text
  # end

  # def down
  #   remove_column :users, :description
  # end
end