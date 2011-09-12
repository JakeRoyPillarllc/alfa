class ProjectType < ActiveRecord::Base
  has_and_belongs_to_many :projects, :order => 'sort_order'
end
