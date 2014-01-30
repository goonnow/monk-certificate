class AddIdNoToMonk < ActiveRecord::Migration
  def change
    add_column :monks, :id_no, :string
  end
end
