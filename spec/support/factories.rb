FactoryGirl.define do
  factory :invitation, :class => Invitable::Invitation do
    name  'Abraham Lincoln'
    email 'alincoln@example.com'
  end
end
