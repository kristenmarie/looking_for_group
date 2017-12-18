class GroupsController < ApplicationController

  def home
    @groups = Group.all
  end

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.admin_id = current_user.id
   if @group.save
     flash[:notice] = "Your group has been created!"
     redirect_to group_path(@group)
   else
     render :new
   end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      flash[:notice] = "Your #{@group.game_title} group has been updated!"
      redirect_to product_path(@group)
    else
      render :edit
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    flash[:alert] = "Group has been deleted."
    redirect_to products_path
  end

  private

  def group_params
    params.require(:group).permit(:game_title, :players_needed, :location, :play_location, :description, :name, :meetup_date, :meetup_time)
  end

end
