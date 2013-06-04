# encoding: utf-8

class AddTestToFooBar < ActiveRecord::Migration
  def change
    add_column :foo_bar, :test, :string
  end

  # def up
  #   add_column :foo_bar, :test, :string
  # end

  # def down
  #   remove_column :foo_bar, :test
  # end
end