class OwnersController < ApplicationController
  before_filter :find_owner, :only => [:show, :edit, :update, :destroy]

  # GET /owners
  # GET /owners.xml
  def index
    @owners = Owner.all

    respond_to do |wants|
      wants.html # index.html.erb
      wants.xml  { render :xml => @owners }
    end
  end

  # GET /owners/1
  # GET /owners/1.xml
  def show
    respond_to do |wants|
      wants.html # show.html.erb
      wants.xml  { render :xml => @owner }
    end
  end

  # GET /owners/new
  # GET /owners/new.xml
  def new
    @owner = Owner.new

    respond_to do |wants|
      wants.html # new.html.erb
      wants.xml  { render :xml => @owner }
    end
  end

  # GET /owners/1/edit
  def edit
  end

  # POST /owners
  # POST /owners.xml
  def create
    @owner = Owner.new(params[:owner])

    respond_to do |wants|
      if @owner.save
        flash[:notice] = 'Owner was successfully created.'
        wants.html { redirect_to(@owner) }
        wants.xml  { render :xml => @owner, :status => :created, :location => @owner }
      else
        wants.html { render :action => "new" }
        wants.xml  { render :xml => @owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /owners/1
  # PUT /owners/1.xml
  def update
    respond_to do |wants|
      if @owner.update_attributes(params[:owner])
        flash[:notice] = 'Owner was successfully updated.'
        wants.html { redirect_to(@owner) }
        wants.xml  { head :ok }
      else
        wants.html { render :action => "edit" }
        wants.xml  { render :xml => @owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /owners/1
  # DELETE /owners/1.xml
  def destroy
    @owner.destroy

    respond_to do |wants|
      wants.html { redirect_to(owners_url) }
      wants.xml  { head :ok }
    end
  end

  private
    def find_owner
      @owner = Owner.find(params[:id])
    end

end
