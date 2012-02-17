module Invitable
  class Invitation < ActiveRecord::Base
    validates :name, :presence => true
    validates :email, :format => %r{\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z}
  end
end
