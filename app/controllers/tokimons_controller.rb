class TokimonsController < ApplicationController
  def index
    @tokimons = Tokimon.all
  end

  def show
    @tokimon = Tokimon.find(params[:id])
    @trainer = @tokimon.trainer
    @total = @tokimon.fire + @tokimon.fight + @tokimon.fly + @tokimon.water + @tokimon.electric + @tokimon.frozon
  end

  def new
    
    @tokimon = Tokimon.new
  end

  def create
    @tokimon = Tokimon.new(tokimon_params)
    @trainer = Trainer.find(@tokimon.trainer_id)
    @tokimon.total = @tokimon.fire + @tokimon.fight + @tokimon.fly + @tokimon.water + @tokimon.electric + @tokimon.frozon
    if @tokimon.save
      flash[:info] = "tokimon created successful!"
      redirect_to @trainer
    else
      render 'new'
    end
  end

  def edit
    @tokimon = Tokimon.find(params[:id])
  end

  def update
     @tokimon = Tokimon.find(params[:id])
     @trainer = Trainer.find(@tokimon.trainer_id)
    if @tokimon.update_attributes(tokimon_params)
      flash[:success] = "Profile updated successfully"
      redirect_to @trainer
    else
      render 'edit'
    end
  end

  def destroy
    id = Tokimon.find(params[:id]).trainer_id
    @trainer = Trainer.find(id)
    Tokimon.find(params[:id]).destroy
    flash[:success] = "Tokimon deleted successfully"
    redirect_to @trainer
  end
private
    def tokimon_params
      params.require(:tokimon).permit(:name, :weight, :height, 
        :fly, :fight, :fire, :water, :electric, :frozon, :trainer_id)
    end



end
