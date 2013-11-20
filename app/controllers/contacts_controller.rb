class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new contact_params
  		if @contact.save
  			redirect_to contacts_url #same as contacts_path. Use url for controllers and path for views
  		else
  			render 'new'
  		end
  end

  def index
  	@contacts = Contact.all
  end

private

	def contact_params
		params.require(:contact).permit(:name, :company, :phone, :email)
	end

end
