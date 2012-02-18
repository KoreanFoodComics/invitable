FactoryGirl.define do
  factory :invitation, :class => Invitable::Invitation do
    email 'alincoln@example.com'
  end
end
