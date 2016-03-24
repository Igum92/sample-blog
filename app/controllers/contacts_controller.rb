class ContactsController < ApplicationController
  def create
    render plain: params[:contact].inspect
  end
end
