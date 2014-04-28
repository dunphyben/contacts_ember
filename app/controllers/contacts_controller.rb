class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render :json => @contacts
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      render :json => @contact, :status => 201
    else
      render :json => {:errors => @contact.errors}, :status => 422
    end
  end

  def show
    @contact = Contact.find(params[:id])
    render :json => @contact
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(params[:contact])
      head :no_content
    else
      render :json => {:errors => @contact.errors}, :status => 422
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    head :no_content
  end

private

  def contact_params
    params.fetch(:contact).permit(:name, :email, :phone)
  end
end

