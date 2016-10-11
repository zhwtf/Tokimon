class TrainersController < ApplicationController
  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def new
    @trainer = Trainer.new

  end

  def create
    @trainer = Trainer.new(trainer_params)
    if @trainer.save
      flash[:info] = "Trainer created successful!"
      redirect_to @trainer
    else
      render 'new'
    end
  end

  def edit
    @trainer = Trainer.find(params[:id])
  end

  def update
    @trainer = Trainer.find(params[:id])
    if @trainer.update_attributes(trainer_params)
      flash[:success] = "Profile updated"
      redirect_to @trainer
    else
      render 'edit'
    end

  end

  def destroy
  end

  private
    def trainer_params
      params.require(:trainer).permit(:name, :age, :height, :weight, :level, :address, :email)
    end



end
