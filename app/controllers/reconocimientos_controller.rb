
class ReconocimientosController < ApplicationController
  # GET /reconocimientos
  # GET /reconocimientos.json
  def index
    @reconocimientos = Reconocimiento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @reconocimientos }
    end
  end

  # GET /reconocimientos/1
  # GET /reconocimientos/1.json
  def show
    @reconocimiento = Reconocimiento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @reconocimiento }
    end
  end

  # GET /reconocimientos/new
  # GET /reconocimientos/new.json
  def new
    @reconocimiento = Reconocimiento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @reconocimiento }
    end
  end

  # GET /reconocimientos/1/edit
  def edit
    @reconocimiento = Reconocimiento.find(params[:id])
  end

  # POST /reconocimientos
  # POST /reconocimientos.json
  def create
    @reconocimiento = Reconocimiento.new(params[:reconocimiento])

    respond_to do |format|
      if @reconocimiento.save
        format.html { redirect_to @reconocimiento, :notice => 'Reconocimiento was successfully created.' }
        format.json { render :json => @reconocimiento, :status => :created, :location => @reconocimiento }
      else
        format.html { render :action => "new" }
        format.json { render :json => @reconocimiento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reconocimientos/1
  # PUT /reconocimientos/1.json
  def update
    @reconocimiento = Reconocimiento.find(params[:id])

    respond_to do |format|
      if @reconocimiento.update_attributes(params[:reconocimiento])
        format.html { redirect_to @reconocimiento, :notice => 'Reconocimiento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @reconocimiento.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reconocimientos/1
  # DELETE /reconocimientos/1.json
  def destroy
    @reconocimiento = Reconocimiento.find(params[:id])
    @reconocimiento.destroy

    respond_to do |format|
      format.html { redirect_to reconocimientos_url }
      format.json { head :no_content }
    end
  end
end
