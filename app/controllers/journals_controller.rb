class JournalsController < ApplicationController
  before_filter :find_journal, :only => [:show, :edit, :update, :destroy]

  # GET /journals
  # GET /journals.xml
  def index
    @journals = Journal.all

    respond_to do |wants|
      wants.html # index.html.erb
      wants.xml  { render :xml => @journals }
    end
  end

  # GET /journals/1
  # GET /journals/1.xml
  def show
    respond_to do |wants|
      wants.html # show.html.erb
      wants.xml  { render :xml => @journal }
    end
  end

  # GET /journals/new
  # GET /journals/new.xml
  def new
    @journal = Journal.new

    respond_to do |wants|
      wants.html # new.html.erb
      wants.xml  { render :xml => @journal }
    end
  end

  # GET /journals/1/edit
  def edit
  end

  # POST /journals
  # POST /journals.xml
  def create
    @journal = Journal.new(params[:journal])

    respond_to do |wants|
      if @journal.save
        flash[:notice] = 'Journal was successfully created.'
        wants.html { redirect_to(@journal) }
        wants.xml  { render :xml => @journal, :status => :created, :location => @journal }
      else
        wants.html { render :action => "new" }
        wants.xml  { render :xml => @journal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /journals/1
  # PUT /journals/1.xml
  def update
    respond_to do |wants|
      if @journal.update_attributes(params[:journal])
        flash[:notice] = 'Journal was successfully updated.'
        wants.html { redirect_to(@journal) }
        wants.xml  { head :ok }
      else
        wants.html { render :action => "edit" }
        wants.xml  { render :xml => @journal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /journals/1
  # DELETE /journals/1.xml
  def destroy
    @journal.destroy

    respond_to do |wants|
      wants.html { redirect_to(journals_url) }
      wants.xml  { head :ok }
    end
  end

  private
    def find_journal
      @journal = Journal.find(params[:id])
    end

end
