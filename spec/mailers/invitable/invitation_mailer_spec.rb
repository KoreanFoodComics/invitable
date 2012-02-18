require 'spec_helper'

describe Invitable::InvitationMailer do
  let(:invitation) { create(:invitation) }
  let(:email) { Invitable::InvitationMailer.thank_you(invitation.id) }

  it 'properly sets the recipient' do
    email.to.should include invitation.email
  end
  it 'properly sets the subject' do
    email.subject.should eq 'Thank-you for signing up!'
  end
end
