module Invitable
  class Invitation < ActiveRecord::Base
    validates :email, :format => %r{\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z}
    belongs_to :invitable, :polymorphic => true

    before_create :generate_code

    private

    def generate_code
      self.code = Digest::MD5.hexdigest("#{self.email}-#{Time.now}")
    end
  end
end
