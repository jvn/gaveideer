class BrugersController < ApplicationController
  # GET /brugers
  # GET /brugers.json
  def index
    @bruger_id = current_user
    @bruger = Bruger.find_by_id(@bruger_id)
    @brugers = Bruger.all

    #@brugerSaaJoelKanSeDetVirker = current_user
    logger.info("nuv. bruger: " + current_user)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brugers }
    end
  end

  # GET /brugers/1
  # GET /brugers/1.json
  def show
    logger.info ("aktuel bruger" + params[:id])
    set_user(params[:id])
    @bruger = Bruger.find(params[:id])
    @bruger_id = current_user
    @all_begivenheds = Begivenhed.all
    @begivenheds = @bruger.begivenheds


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bruger }
    end
  end

  # GET /brugers/new
  # GET /brugers/new.json
  def new
    @bruger = Bruger.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bruger }
    end
  end

  # GET /brugers/1/edit
  def edit
    @bruger = Bruger.find(params[:id])
  end

  # POST /brugers
  # POST /brugers.json
  def create
    @bruger = Bruger.new(params[:bruger])

    respond_to do |format|
      if @bruger.save
        format.html { redirect_to @bruger, notice: 'Bruger was successfully created.' }
        format.json { render json: @bruger, status: :created, location: @bruger }
      else
        format.html { render action: "new" }
        format.json { render json: @bruger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brugers/1
  # PUT /brugers/1.json
  def update
    @bruger = Bruger.find(params[:id])

    respond_to do |format|
      if @bruger.update_attributes(params[:bruger])
        format.html { redirect_to @bruger, notice: 'Bruger was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bruger.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /brugers/1
  # DELETE /brugers/1.json
  def destroy
    @bruger = Bruger.find(params[:id])
    @bruger.destroy

    respond_to do |format|
      format.html { redirect_to brugers_url }
      format.json { head :ok }
    end
  end
end
