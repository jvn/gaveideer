class BegivenhedsController < ApplicationController
  # GET /begivenheds
  # GET /begivenheds.json
  def index
    @begivenheds = Begivenhed.all
    @bruger_id = current_user.id
    @ven_id = params[:ven_id]
    @ven = Bruger.find_by_id(@ven_id)
    @ven_begivenheds = @ven.begivenheds
    @bruger = Bruger.find_by_id(current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @begivenheds }
    end
  end

  # GET /begivenheds/1
  # GET /begivenheds/1.json
  def show
    @begivenhed = Begivenhed.find(params[:id])
    @bruger = Bruger.find_by_id(current_user.id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @begivenhed }
    end
  end

  # GET /begivenheds/new
  # GET /begivenheds/new.json
  def new
    @bruger_id = current_user.id
    @bruger = Bruger.find_by_id(@bruger_id)
    @begivenhed = Begivenhed.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @begivenhed }
    end
  end

  # GET /begivenheds/1/edit
  def edit
    @begivenhed = Begivenhed.find(params[:id])
  end

  # POST /begivenheds
  # POST /begivenheds.json
  def create
    @begivenhed = Begivenhed.new(params[:begivenhed])
    @begivenhed.bruger_id = current_user.id
    respond_to do |format|
      if @begivenhed.save
        format.html { redirect_to @begivenhed, notice: 'Begivenhed was successfully created.' }
        format.json { render json: @begivenhed, status: :created, location: @begivenhed }
      else
        format.html { render action: "new" }
        format.json { render json: @begivenhed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /begivenheds/1
  # PUT /begivenheds/1.json
  def update
    @bruger = Bruger.find_by_id(current_user.id)
    @begivenhed = Begivenhed.find(params[:id])

    respond_to do |format|
      if @begivenhed.update_attributes(params[:begivenhed])
        format.html { redirect_to @begivenhed, notice: 'Begivenhed was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @begivenhed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /begivenheds/1
  # DELETE /begivenheds/1.json
  def destroy
    @bruger = Bruger.find_by_id(current_user.id)
    @begivenhed = Begivenhed.find(params[:id])
    @begivenhed.destroy

    respond_to do |format|
      format.html { redirect_to begivenheds_url }
      format.json { head :ok }
    end
  end
end
