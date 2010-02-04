# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def current_user_voted_on?(bill_id)
    (current_user && current_user.voted_on?(bill_id))
  end

  def current_user_voted_yes_on?(bill_id)
    (current_user && current_user.voted_yes_on?(bill_id))
  end

  def current_user_voted_no_on?(bill_id)
    (current_user && current_user.voted_no_on?(bill_id))
  end
end
