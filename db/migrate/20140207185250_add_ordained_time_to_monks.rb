class AddOrdainedTimeToMonks < ActiveRecord::Migration
  def change
    remove_column :monks, :ordained_time
    add_column :monks, :ordained_time, :time
  end
end
