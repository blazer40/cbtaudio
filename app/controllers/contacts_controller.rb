class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = '<br><br><br><br><br><br>Thank you for your message!'
      render "portfolio/index"
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
