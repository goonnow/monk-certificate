class CreateMonks < ActiveRecord::Migration
  def change
    create_table :monks do |t|
      t.integer :cert_no
      t.string :firstname
      t.string :surname
      t.string :monkname
      t.date :birthdate
      t.float :height
      t.string :skin
      t.datetime :ordained_time
      t.string :ordainer
      t.string :pair_monk_1
      t.string :pair_monk_2
      t.string :approval_name
      t.string :approval_position

      t.timestamps
    end
  end
end
