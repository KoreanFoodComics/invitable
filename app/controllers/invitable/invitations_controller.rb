module Invitable
  class InvitationsController < ::ApplicationController
    def create
      @invitation = Invitation.new(params[:invitation])

      respond_to do |format|
        if @invitation.save
          mailer(@invitation)
          message = I18n.t :success, :scope => [:invitable]
          format.html { redirect_to main_app.root_path, :notice => message }
          format.js   { render :json => { :success => true, :message => message }, :content_type => 'application/json' }
        else
          message = I18n.t :failure, :scope => [:invitable]
          format.html { redirect_to main_app.root_path, :alert => message }
          format.js   { render :json => { :success => false, :message => message }, :content_type => 'application/json' }
        end
      end
    end

    private

    def mailer(invitation)
      InvitationMailer.thank_you(invitation.id).deliver
    end
  end
end
