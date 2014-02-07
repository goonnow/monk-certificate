class AddOrdainedDateToMonks < ActiveRecord::Migration
  def change
    add_column :monks, :ordained_date, :date
  end
end
