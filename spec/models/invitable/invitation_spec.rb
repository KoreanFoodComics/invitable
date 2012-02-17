require 'spec_helper'

describe Invitable::Invitation do
  it { should     have_valid(:name).when('Abraham Lincoln') }
  it { should_not have_valid(:name).when(nil, '') }
  it { should     have_valid(:email).when('alincoln@example.com') }
  it { should_not have_valid(:email).when(nil, '', 'alincoln') }

  describe 'unique code' do
    let(:invitation) { build(:invitation) }
    context 'upon creation' do
      it 'is generated' do
        invitation.code.should be_nil
        invitation.save
        invitation.code.should_not be_nil
      end
    end
    context 'upon update' do
      before { invitation.save }
      it 'is not regenerated' do
        code = invitation.code
        invitation.name = 'Thomas Jefferson'
        invitation.save
        invitation.code.should eq code
      end
    end
  end
end
