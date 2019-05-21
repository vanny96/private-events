class InvitationsController < ApplicationController

  def create
    invite = Invitation.new(party_id: params[:invitation][:party_id])
    guest = User.find_by email: params[:invitation][:guest_email]
    invite.guest_id = guest.id if guest
    
    if invite.save
      flash[:success] = "#{guest.name} has benn invited!"
      redirect_to Party.find params[:invitation][:party_id]
    else
      flash[:error] = "Impossible to invite"
      redirect_to Party.find params[:invitation][:party_id]
    end
  end

end
