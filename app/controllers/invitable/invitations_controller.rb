module Invitable
  class InvitationsController < ApplicationController
    def create
      @invitation = Invitation.new(params[:invitation])

      respond_to do |format|
        if @invitation.save
          format.html { redirect_to main_app.root_path, :notice => 'Thank-you' }
          format.js   { render :js => true }
        else
          format.html { redirect_to main_app.root_path, :alert =>'There was an error, please try again' }
          format.js   { render :js => false }
        end
      end
    end
  end
end
