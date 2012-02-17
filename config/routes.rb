Invitable::Engine.routes.draw do
  post '/invitations' => 'invitations#create', :as => :invitations
end
