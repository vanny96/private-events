module PartiesHelper
  def invited_to? party, user
    party.guests.include?(user) || party.host == user
  end
end
