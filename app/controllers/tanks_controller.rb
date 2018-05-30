class TanksController < ApplicationController

  def index
    @tanks = Tank.all
  end

  def show
    @tank = Tank.find(params[:id])
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
      redirect_to @tank
    else
      render 'new'
    end
  end

  def update
    @tank = Tank.find(params[:id])

    if @tank.update(tank_params)
      redirect_to @tank
    else
      render 'edit'
    end
  end

  def destroy
    @tank = Tank.find(params[:id])
    @tank.destroy
    
    redirect_to tanks_path
  end

    private

    def tank_params
      params.require(:tank).permit(:address)
    end


end
