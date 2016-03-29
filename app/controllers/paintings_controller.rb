class PaintingsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    if current_user && current_user.admin
      @paintings = Painting.all
    else
      @paintings = Painting.where(active: true).order(:name)
    end
  end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(painting_params)
    if @painting.save
      flash[:sucess] = "You added #{@painting.name} to your gallery"
      redirect_to '/paintings'
    else
      index = 0
      @painting.errors.full_messages.each do |message|
        flash[index] = message
        index += 1
      end
      render 'new'
    end
  end

  def show
    if current_user && current_user.admin
      @paintings = Painting.all
    else
      @paintings = Painting.where(active: true).order(:name)
    end
    @painting = Painting.find(params[:id])
  end

  def edit
    @painting = Painting.find(params[:id])
  end

  def update
    @painting = Painting.find(params[:id])
    if @painting.update(painting_params)
      flash[:info] = "#{@painting.name} was updated."
      redirect_to "/paintings/#{@painting.id}"
    else
      index = 0
      @painting.errors.full_messages.each do |message|
        flash[index] = message
        index += 1
      end
      render 'edit'
    end
  end

  def destroy
    painting = Painting.find(params[:id])
    painting.destroy
  end

  private

  def painting_params
    params.permit(
      :name,
      :price,
      :active || false,
      :medium,
      :description,
      :url,
      :image
      )
  end
end
