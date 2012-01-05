class PagesController < ApplicationController
  def forside
    @brugers = Bruger.all
  end

end
