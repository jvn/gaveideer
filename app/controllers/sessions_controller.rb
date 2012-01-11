class SessionsController < ApplicationController
  def new
  end

  def create
  bruger.create = Bruger.authenticate(params[:email], params[:password])
  if user
    session[:bruger_id] = bruger.id
    redirect_to root_url, :notice => "Le homepage, now logged iN!"
  else
    flash.now.alert = "WROnG!!!"
    end
  end
end

