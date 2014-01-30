class AddAttachmentPicToMonks < ActiveRecord::Migration
  def self.up
    change_table :monks do |t|
      t.attachment :pic
    end
  end

  def self.down
    drop_attached_file :monks, :pic
  end
end
