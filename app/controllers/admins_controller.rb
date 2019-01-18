# frozen_string_literal: true

class AdminsController < ApplicationController
  def show
  	@admin = Admin.find(params[:id])
  end
end
