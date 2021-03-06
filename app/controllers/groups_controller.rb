class GroupsController < ApplicationController
  before_filter :login_required, :only => :new

  def home
    @groups = Group.all
  end

  def index
    @groups = Group.not_full
    if params[:search]
      @groups = Group.search(params[:search]).order("created_at DESC")
    else
      @groups = Group.all.order("created_at DESC")
    end
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
      @membership = Membership.new(:group_id => @group.id, :user_id => current_user.id)
      @membership.update(:status => 'approved')
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
    if current_user.id == @group.admin_id
      if @group.update(group_params)
        flash[:notice] = "Your #{@group.game_title} group has been updated!"
        redirect_to group_path(@group)
      else
        render :edit
      end
    else
      flash[:alert] = "You are not authorized to make changes to this group."
      redirect_to group_path(@group)
    end
  end

  def destroy
    @group = Group.find(params[:id])
    if current_user.id == @group.admin_id
      @group.destroy
      flash[:notice] = "Group has been deleted."
      redirect_to groups_path
    else
      flash[:alert] = "You are not authorized to delete this group."
      redirect_to group_path(@group)
    end
  end

  private

  def group_params
    params.require(:group).permit(:game_title, :players_needed, :location, :play_location, :description, :name, :meetup_date, :meetup_time)
  end

end
