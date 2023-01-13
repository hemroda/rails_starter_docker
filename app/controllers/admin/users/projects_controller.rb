# frozen_string_literal: true

class Admin::Users::ProjectsController < Admin::ProjectsController
  private
    def set_projectable
      @projectable = User.find(params[:user_id])
    end
end
