class CharadesController < ApplicationController
  # GET /charades
  # GET /charades.xml
  def index
    @charades = Charade.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @charades }
    end
  end

  # GET /charades/1
  # GET /charades/1.xml
  def show
    @charade = Charade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @charade }
    end
  end

  # GET /charades/new
  # GET /charades/new.xml
  def new
    @charade = Charade.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @charade }
    end
  end

  # GET /charades/1/edit
  def edit
    @charade = Charade.find(params[:id])
  end

  # POST /charades
  # POST /charades.xml
  def create
    @charade = Charade.new(params[:charade])

    respond_to do |format|
      if @charade.save
        flash[:notice] = 'Charade was successfully created.'
        format.html { redirect_to(@charade) }
        format.xml  { render :xml => @charade, :status => :created, :location => @charade }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @charade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /charades/1
  # PUT /charades/1.xml
  def update
    @charade = Charade.find(params[:id])

    respond_to do |format|
      if @charade.update_attributes(params[:charade])
        flash[:notice] = 'Charade was successfully updated.'
        format.html { redirect_to(@charade) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @charade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /charades/1
  # DELETE /charades/1.xml
  def destroy
    @charade = Charade.find(params[:id])
    @charade.destroy

    respond_to do |format|
      format.html { redirect_to(charades_url) }
      format.xml  { head :ok }
    end
  end
end
