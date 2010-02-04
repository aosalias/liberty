class Users::VotesController < ApplicationController
  filter_resource_access :nested_in => :users

  def index
    @user_bills = @user.bills
  end

  def update
  end

  def destroy
    @user_vote.destroy
    flash[:notice] = "Successfully destroyed user vote."
    redirect_to user_votes_url
  end

end
