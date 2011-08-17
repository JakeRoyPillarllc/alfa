class PressItemsController < ApplicationController
  before_filter :authenticate_admin!, :except => [:show, :index]
  # GET /press_items
  # GET /press_items.json
  def index
    @press_items = PressItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @press_items }
    end
  end

  # GET /press_items/1
  # GET /press_items/1.json
  def show
    @press_item = PressItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @press_item }
    end
  end

  # GET /press_items/new
  # GET /press_items/new.json
  def new
    @press_item = PressItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @press_item }
    end
  end

  # GET /press_items/1/edit
  def edit
    @press_item = PressItem.find(params[:id])
  end

  # POST /press_items
  # POST /press_items.json
  def create
    @press_item = PressItem.new(params[:press_item])

    respond_to do |format|
      if @press_item.save
        format.html { redirect_to @press_item, notice: 'Press item was successfully created.' }
        format.json { render json: @press_item, status: :created, location: @press_item }
      else
        format.html { render action: "new" }
        format.json { render json: @press_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /press_items/1
  # PUT /press_items/1.json
  def update
    @press_item = PressItem.find(params[:id])

    respond_to do |format|
      if @press_item.update_attributes(params[:press_item])
        format.html { redirect_to @press_item, notice: 'Press item was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @press_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /press_items/1
  # DELETE /press_items/1.json
  def destroy
    @press_item = PressItem.find(params[:id])
    @press_item.destroy

    respond_to do |format|
      format.html { redirect_to press_items_url }
      format.json { head :ok }
    end
  end
end
