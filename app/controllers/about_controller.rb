class AboutController < ApplicationController
  def index
    @narrative = Narrative.find_by_name('about us')
  end
end
