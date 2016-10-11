class TokimonsController < ApplicationController
  def index
    @tokimons = Tokimon.all
  end

  def show
    @tokimon = Tokimon.find(params[:id])
  end

  def new
    @tokimon = Tokimon.new
  end

  def create
    @tokimon = Tokimon.new(tokimon_params)
    if @tokimon.save
      flash[:info] = "tokimon created successful!"
      redirect_to @tokimon
    else
      render 'new'
    end
  end

  def edit
    @tokimon = Tokimon.find(params[:id])
  end

  def update
     @tokimon = Tokimon.find(params[:id])
    if @tokimon.update_attributes(tokimon_params)
      flash[:success] = "Profile updated"
      redirect_to @tokimon
    else
      render 'edit'
    end
  end

  def destroy
  end
private
    def tokimon_params
      params.require(:tokimon).permit(:name, :weight, :height, 
        :fly, :fight, :fire, :water, :electric, :frozon, :trainer_id)
    end



end
