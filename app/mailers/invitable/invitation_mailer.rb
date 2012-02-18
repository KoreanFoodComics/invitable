module Invitable
  class InvitationMailer < ActionMailer::Base
    default from: 'donotreply@openbay.com'

    def thank_you(id)
      @invitation = Invitation.find(id)
      mail(:to => @invitation.email, :subject => I18n.t(:thank_you_subject, :scope => [:invitable]))
    end
  end
end
