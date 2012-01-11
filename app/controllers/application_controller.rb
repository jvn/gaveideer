class ApplicationController < ActionController::Base
  protect_from_forgery

  def set_user(a)
    logger.info("bruger sattes til " + a.to_s)
    session["user"] = a
  end

  def remove_user
    session["user"] = nil
  end

  def current_user
    logger.info("HEJ JOEL: bruger er " + session["user"])
    session["user"]
  end
end
