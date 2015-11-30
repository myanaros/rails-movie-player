class Movie < ActiveRecord::Base
  has_attached_file :media_file
  do_not_validate_attachment_file_type :media_file

  validates :media_file_file_name, presence: true, uniqueness: true

  def self.search query
    where("media_file_file_name like ?", "%#{query}%")
  end
end
