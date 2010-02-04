class Bills::VotesController < ApplicationController
  filter_resource_access :nested_in => :bills

  def create
    if @vote.save
      respond_to do |format|
        format.html {
          redirect_to :back
        }
        format.js {
          jelly_callback("vote_#{@vote.yes? ? 'yes' : 'no'}") do
            [@bill.id, @bill.no_votes, @bill.yes_votes]
          end
        }
      end
    end
  end

  def new_vote_from_params
    @vote = @bill.votes.new(:yes => params[:yes], :user => current_user)
  end
end
