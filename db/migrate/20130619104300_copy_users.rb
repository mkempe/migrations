# encoding: utf-8

class CopyUsers < ActiveRecord::Migration
  def up
    dump = File.expand_path '../dumps/users', File.dirname(__FILE__)

    raw_connection = connection.raw_connection

    raw_connection.exec %q[COPY users (id, last_name, first_name, description) FROM STDIN]

    data = File.open(dump) { |file| file.read } # Read dump

    data.each_line { |line| raw_connection.put_copy_data line } # Loop through each line and copy data

    raw_connection.put_copy_end

    while result = raw_connection.get_result do; end # Cery important to do this after a copy
  end
end