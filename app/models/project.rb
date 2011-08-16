class Project < ActiveRecord::Base
  has_many :galleries, :dependent => :destroy
  accepts_nested_attributes_for :galleries, :reject_if => lambda { |a| a[:photo].blank? }, :allow_destroy => true
end
