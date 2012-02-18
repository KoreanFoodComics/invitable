module Invitable
  class InvitationMailer < ActionMailer::Base
    default from: 'donotreply@openbay.com'

    def thank_you(id)
      @invitation = Invitation.find(id)
      mail(:to => @invitation.email, :subject => 'Thank-you for signing up!')
    end
  end
end
