class Movie < ActiveRecord::Base
  has_attached_file :media_file
  do_not_validate_attachment_file_type :media_file
end
