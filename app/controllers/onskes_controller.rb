class OnskesController < ApplicationController
  # GET /onskes
  # GET /onskes.json
  def index
    @bruger = Bruger.find_by_id(current_user)
    @onskes = Onske.all
    @begivenhed_id = params[:beg_id]
    @begivenhed = Begivenhed.find_by_id(@begivenhed_id)
    @onsker = @begivenhed.onskes


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @onskes }
    end
  end

  # GET /onskes/1
  # GET /onskes/1.json
  def show
    @bruger = Bruger.find_by_id(current_user)
    @onske = Onske.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @onske }
    end
  end

  # GET /onskes/new
  # GET /onskes/new.json
  def new
    @onske = Onske.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @onske }
    end
  end

  # GET /onskes/1/edit
  def edit
    @bruger = Bruger.find_by_id(current_user)
    @onske = Onske.find(params[:id])
  end

  # POST /onskes
  # POST /onskes.json
  def create
    @onske = Onske.new(params[:onske])

    respond_to do |format|
      if @onske.save
        format.html { redirect_to @onske, notice: 'Onske was successfully created.' }
        format.json { render json: @onske, status: :created, location: @onske }
      else
        format.html { render action: "new" }
        format.json { render json: @onske.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /onskes/1
  # PUT /onskes/1.json
  def update
    @onske = Onske.find(params[:id])

    respond_to do |format|
      if @onske.update_attributes(params[:onske])
        format.html { redirect_to @onske, notice: 'Onske was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @onske.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /onskes/1
  # DELETE /onskes/1.json
  def destroy
    @onske = Onske.find(params[:id])
    @onske.destroy

    respond_to do |format|
      format.html { redirect_to onskes_url }
      format.json { head :ok }
    end
  end
end
