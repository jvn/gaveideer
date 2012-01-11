class SessionsController < ApplicationController
  def new
    render:layout => false
  end

  def create
  bruger = Bruger.authenticate(params[:email], params[:password])
  if bruger
    logger.info('hej')
    session[:bruger_id] = bruger.id
    redirect_to root_url, :notice => "det virker?"
  else
    flash.now.alert = "forkert kode"
    render "new"
    end
  end
end

