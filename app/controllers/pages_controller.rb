class PagesController < InheritedResources::Base

  def claim
    render 'claim'
  end

  def access
    Pony.mail(:to => 'darkwater666@mail.ru', :from => 'me@example.com', :subject => 'hi', :body => params[:message], :via => :smtp) # sends via SMTP
    render 'access'
  end

  def products
    render 'products'
  end

end
