
class ExamenController < ApplicationController
  # GET /examen
  # GET /examen.json
  def index
    @examen = Examan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @examen }
    end
  end

  # GET /examen/1
  # GET /examen/1.json
  def show
    @examan = Examan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @examan }
    end
  end

  # GET /examen/new
  # GET /examen/new.json
  def new
    @examan = Examan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @examan }
    end
  end

  # GET /examen/1/edit
  def edit
    @examan = Examan.find(params[:id])
  end

  # POST /examen
  # POST /examen.json
  def create
    @examan = Examan.new(params[:examan])

    respond_to do |format|
      if @examan.save
        format.html { redirect_to @examan, :notice => 'Examan was successfully created.' }
        format.json { render :json => @examan, :status => :created, :location => @examan }
      else
        format.html { render :action => "new" }
        format.json { render :json => @examan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /examen/1
  # PUT /examen/1.json
  def update
    @examan = Examan.find(params[:id])

    respond_to do |format|
      if @examan.update_attributes(params[:examan])
        format.html { redirect_to @examan, :notice => 'Examan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @examan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /examen/1
  # DELETE /examen/1.json
  def destroy
    @examan = Examan.find(params[:id])
    @examan.destroy

    respond_to do |format|
      format.html { redirect_to examen_url }
      format.json { head :no_content }
    end
  end
end
