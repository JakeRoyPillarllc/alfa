class Gallery < ActiveRecord::Base
  belongs_to :project
  has_attached_file :photo, :styles => { :medium => "411x330", :small => "137x110", :tiny => "10X10" }
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png', 'image/gif']
end
