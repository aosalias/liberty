class HomeController < ApplicationController
  def about
  end

  def home
    @bill = Bill.feature_bill
  end
end
