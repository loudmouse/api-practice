class TanksController < ApplicationController

  def index
    @tanks = Tank.all

    respond_to do |format|
        format.html
        format.json { render json: @tanks }
      end
  end

  def show
    @tank = Tank.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @tank }
    end
  end

  def new
    @tank = Tank.new
  end

  def edit
    @tank = Tank.find(params[:id])
  end

  def create
    @tank = Tank.new(tank_params)

    if @tank.save
      flash[:notice] = "Tank created!"
      redirect_to @tank
    else
      flash.now[:notice] = "Tank couldn't be created."
      render 'new'
    end
  end

  def update
    @tank = Tank.find(params[:id])

    if @tank.update(tank_params)
      flash[:notice] = "Tank updated!"
      redirect_to @tank
    else
      flash.now[:notice] = "Tank couldn't be updated."
      render 'edit'
    end
  end

  def destroy
    @tank = Tank.find(params[:id])
    @tank.destroy
    flash[:notice] = "Tank has been deleted!"

    redirect_to tanks_path
  end

    private

    def tank_params
      params.require(:tank).permit(:address)
    end


end
