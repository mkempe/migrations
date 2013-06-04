# encoding: utf-8

class CreateFooBar < ActiveRecord::Migration
  def change
    create_table :foo_bar do |t|
      t.string :name
      t.text   :description

      t.timestamps
    end
  end

  # def up
  #   create_table :foo_bar do |t|
  #     t.string :name
  #     t.text   :description

  #     t.timestamps
  #   end
  # end

  # def down
  #   drop_table :foo_bar
  # end
end