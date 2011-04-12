class SkModulesController < ApplicationController
  # GET /sk_modules
  # GET /sk_modules.xml
  def index
    @sk_modules = SkModule.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sk_modules }
    end
  end

  # GET /sk_modules/1
  # GET /sk_modules/1.xml
  def show
    @sk_module = SkModule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sk_module }
    end
  end

  # GET /sk_modules/new
  # GET /sk_modules/new.xml
  def new
    @sk_module = SkModule.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sk_module }
    end
  end

  # GET /sk_modules/1/edit
  def edit
    @sk_module = SkModule.find(params[:id])
  end

  # POST /sk_modules
  # POST /sk_modules.xml
  def create
    @sk_module = SkModule.new(params[:sk_module])

    respond_to do |format|
      if @sk_module.save
        format.html { redirect_to(@sk_module, :notice => 'Sk module was successfully created.') }
        format.xml  { render :xml => @sk_module, :status => :created, :location => @sk_module }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sk_module.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sk_modules/1
  # PUT /sk_modules/1.xml
  def update
    @sk_module = SkModule.find(params[:id])

    respond_to do |format|
      if @sk_module.update_attributes(params[:sk_module])
        format.html { redirect_to(@sk_module, :notice => 'Sk module was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sk_module.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sk_modules/1
  # DELETE /sk_modules/1.xml
  def destroy
    @sk_module = SkModule.find(params[:id])
    @sk_module.destroy

    respond_to do |format|
      format.html { redirect_to(sk_modules_url) }
      format.xml  { head :ok }
    end
  end
end
