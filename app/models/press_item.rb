class PressItem < ActiveRecord::Base
   validates_url_format_of :link,
                           :allow_nil => true,
                           :message => 'is malformed'
end
