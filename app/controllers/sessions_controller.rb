class SessionsController < ApplicationController
  def new
    logger.info("Session.new kaldt")
    render:layout => false
  end

  def create
    logger.info("Session.create kaldt")
    bruger = Bruger.authenticate(params[:email], params[:password])
    if bruger
      logger.info("YQQQHHAAAAA")

      session[:bruger_id] = bruger.id
      redirect_to :controller => "brugers", :action => "show", :id=>bruger.id
      #redirect_to root_url, :notice => "Le homepage, now logged iN!"
    else
      flash.now.alert = "WROnG!!!"
      render "new"
    end
  end

  def destroy
    session[:bruger_id] = nil
    redirect_to root_url, :notice => "Byee"

  end
end

