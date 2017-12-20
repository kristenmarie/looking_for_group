class MembershipsController < ApplicationController

  def create
    @group = Group.find(params[:group_id])
    @membership = Membership.new(:group_id => @group.id, :user_id => current_user.id)
    if @membership.save!
      flash[:notice] = "Your request has been recieved and is pending review!"
      redirect_to group_path(@group)
    end
  end

  def update
    @membership = Membership.find(params[:id])
    @membership.update(:status => 'approved')
  end

  def index
    @group = Group.find(params[:group_id])
    @memberships = @group.memberships
  end

end
