module Invitable
  class InvitationMailer < ActionMailer::Base
    default from: "donotreply@openbay.com"

    def thank_you(invitation)
      @invitation = invitation
      mail(:to => "#{@invitation.name} <#{@invitation.email}>", :subject => 'Thank-you for signing up!')
    end
  end
end
