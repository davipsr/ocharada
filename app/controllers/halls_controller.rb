class HallsController < ApplicationController
  # GET /halls
  # GET /halls.xml
  def index
    @halls = Hall.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @halls }
    end
  end

  # GET /halls/1
  # GET /halls/1.xml
  def show
    @hall = Hall.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hall }
    end
  end

  # GET /halls/new
  # GET /halls/new.xml
  def new
    @hall = Hall.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hall }
    end
  end

  # GET /halls/1/edit
  def edit
    @hall = Hall.find(params[:id])
  end

  # POST /halls
  # POST /halls.xml
  def create
    @hall = Hall.new(params[:hall])

    respond_to do |format|
      if @hall.save
        flash[:notice] = 'Hall was successfully created.'
        format.html { redirect_to(@hall) }
        format.xml  { render :xml => @hall, :status => :created, :location => @hall }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hall.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /halls/1
  # PUT /halls/1.xml
  def update
    @hall = Hall.find(params[:id])

    respond_to do |format|
      if @hall.update_attributes(params[:hall])
        flash[:notice] = 'Hall was successfully updated.'
        format.html { redirect_to(@hall) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hall.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /halls/1
  # DELETE /halls/1.xml
  def destroy
    @hall = Hall.find(params[:id])
    @hall.destroy

    respond_to do |format|
      format.html { redirect_to(halls_url) }
      format.xml  { head :ok }
    end
  end
end
