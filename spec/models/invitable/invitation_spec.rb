require 'spec_helper'

describe Invitable::Invitation do
  it { should     have_valid(:name).when('Abraham Lincoln') }
  it { should_not have_valid(:name).when(nil, '') }
  it { should     have_valid(:email).when('alincoln@example.com') }
  it { should_not have_valid(:email).when(nil, '', 'alincoln') }
end
