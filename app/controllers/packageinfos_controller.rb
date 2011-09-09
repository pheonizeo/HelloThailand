class PackageinfosController < ApplicationController
  # GET /packageinfos
  # GET /packageinfos.xml
  def index
    @packageinfos = Packageinfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @packageinfos }
    end
  end

  # GET /packageinfos/1
  # GET /packageinfos/1.xml
  def show
    @packageinfo = Packageinfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @packageinfo }
    end
  end

  # GET /packageinfos/new
  # GET /packageinfos/new.xml
  def new
    @packageinfo = Packageinfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @packageinfo }
    end
  end

  # GET /packageinfos/1/edit
  def edit
    @packageinfo = Packageinfo.find(params[:id])
  end

  # POST /packageinfos
  # POST /packageinfos.xml
  def create
    @packageinfo = Packageinfo.new(params[:packageinfo])

    respond_to do |format|
      if @packageinfo.save
        format.html { redirect_to(@packageinfo, :notice => 'Packageinfo was successfully created.') }
        format.xml  { render :xml => @packageinfo, :status => :created, :location => @packageinfo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @packageinfo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /packageinfos/1
  # PUT /packageinfos/1.xml
  def update
    @packageinfo = Packageinfo.find(params[:id])

    respond_to do |format|
      if @packageinfo.update_attributes(params[:packageinfo])
        format.html { redirect_to(@packageinfo, :notice => 'Packageinfo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @packageinfo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /packageinfos/1
  # DELETE /packageinfos/1.xml
  def destroy
    @packageinfo = Packageinfo.find(params[:id])
    @packageinfo.destroy

    respond_to do |format|
      format.html { redirect_to(packageinfos_url) }
      format.xml  { head :ok }
    end
  end
end
