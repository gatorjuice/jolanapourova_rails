class PaintingsController < ApplicationController
  def index
    @paintings = Painting.where(active: true)
  end
end
