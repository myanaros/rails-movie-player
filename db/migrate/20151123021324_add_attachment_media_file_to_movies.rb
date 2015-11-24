class AddAttachmentMediaFileToMovies < ActiveRecord::Migration
  def self.up
    change_table :movies do |t|
      t.attachment :media_file
    end
  end

  def self.down
    remove_attachment :movies, :media_file
  end
end
