class EntriesController < ApplicationController
  before_filter :find_entry, :only => [:show, :edit, :update, :destroy]

  # GET /entries
  # GET /entries.xml
  def index
    @entries = Entry.all

    respond_to do |wants|
      wants.html # index.html.erb
      wants.xml  { render :xml => @entries }
    end
  end

  # GET /entries/1
  # GET /entries/1.xml
  def show
    respond_to do |wants|
      wants.html # show.html.erb
      wants.xml  { render :xml => @entry }
    end
  end

  # GET /entries/new
  # GET /entries/new.xml
  def new
    @entry = Entry.new

    respond_to do |wants|
      wants.html # new.html.erb
      wants.xml  { render :xml => @entry }
    end
  end

  # GET /entries/1/edit
  def edit
  end

  # POST /entries
  # POST /entries.xml
  def create
    @entry = Entry.new(params[:entry])

    respond_to do |wants|
      if @entry.save
        flash[:notice] = 'Entry was successfully created.'
        wants.html { redirect_to(@entry) }
        wants.xml  { render :xml => @entry, :status => :created, :location => @entry }
      else
        wants.html { render :action => "new" }
        wants.xml  { render :xml => @entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /entries/1
  # PUT /entries/1.xml
  def update
    respond_to do |wants|
      if @entry.update_attributes(params[:entry])
        flash[:notice] = 'Entry was successfully updated.'
        wants.html { redirect_to(@entry) }
        wants.xml  { head :ok }
      else
        wants.html { render :action => "edit" }
        wants.xml  { render :xml => @entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.xml
  def destroy
    @entry.destroy

    respond_to do |wants|
      wants.html { redirect_to(entries_url) }
      wants.xml  { head :ok }
    end
  end

  private
    def find_entrie
      @entry = Entry.find(params[:id])
    end

end
