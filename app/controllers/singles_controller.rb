class SinglesController < ApplicationController
  def whiteboard
    @page = "whiteboard"
  end

  def contact
    @page = "contact"
  end

  def practice
    @page = "practice"
  end

  def welcome
    @page = "welcome"
  end
end