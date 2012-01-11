class PagesController < ApplicationController

  def forside
    @brugers = Bruger.all

    #respond_to do |format|
      #format.html # show.html.erb
      #format.json { render json: @bruger }
      render:layout => false
    #end
  end

  def logud
    remove_user
    redirect_to :root
  end

end
