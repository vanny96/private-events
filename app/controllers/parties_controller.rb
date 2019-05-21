class PartiesController < ApplicationController
  include SessionsHelper
  before_action :check_logged_in, only: [:new, :create]

  def index
  end

  def new
    @party = Party.new
  end

  def create
    assign_current_user
    @party = @current_user.parties.build params_for_party
    if @party.save
      flash[:sussess] = "Party Successfully created"
      redirect_to @party
    else
      render :new
    end
  end

  def show
    @party = Party.find params[:id]
  end

  private

  def check_logged_in
    redirect_to login_path unless logged_in?
  end

  def params_for_party
    params.require(:party).permit(:name, :body, :location)
  end
end
