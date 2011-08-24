class Project < ActiveRecord::Base
  has_many :galleries, :dependent => :destroy
  accepts_nested_attributes_for :galleries, :reject_if => lambda { |a| a[:photo].blank? }, :allow_destroy => true

  has_attached_file :photo, :styles => { :small => "137x110" }
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 15.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png', 'image/gif']

  has_attached_file :diagram, :styles => { :small => "137x110" }
  validates_attachment_size :diagram, :less_than => 5.megabytes
  validates_attachment_content_type :diagram, :content_type => ['image/jpeg', 'image/png', 'images/gif']

  has_and_belongs_to_many :project_types
end
