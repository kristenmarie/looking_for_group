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
    @group = Group.find(params[:group_id])
    @membership = Membership.find(params[:id])
    if current_user.id == @group.admin_id
      @membership.update(:status => 'approved')
      flash[:notice] = "Membership status has been updated!"
      redirect_to group_memberships_path(@group)
    else
      redirect_to group_path(@group)
    end
  end

  def index
    @group = Group.find(params[:group_id])
    @approved = @group.memberships.approved
    @pending = @group.memberships.pending
    @rejected = @group.memberships.rejected
  end

end
