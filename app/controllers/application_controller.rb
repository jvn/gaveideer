class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  private

  def set_user(a)
    logger.info("bruger sattes til " + a.to_s)
    session["user"] = a
  end

  def current
    session["ekstra"] = b
  end

  def remove_user
    session["user"] = nil
  end

  def current_user
    logger.info("HEJ JOEL: bruger er " + session["user"].to_s)
    #session["user"]
    @current_user ||= Bruger.find(session[:bruger_id]) if session[:bruger_id]
  end
end
