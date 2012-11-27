class <%= class_name.pluralize %>Controller < ApplicationController
  #before_filter :authenticate_user!, except: [:show]

  def all
    @<%= plural_table_name %> = <%= class_name.singularize %>.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @<%= plural_table_name %> }
    end
  end
  
  def show
    @<%= singular_table_name %> = <%= class_name.singularize %>.find_by_slug(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @<%= singular_table_name %> }
    end
  end
  
  def new
    @<%= singular_table_name %> = <%= class_name.singularize %>.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @<%= singular_table_name %> }
    end
  end
  
  def edit
    @<%= singular_table_name %> = <%= class_name.singularize %>.find_by_slug(params[:id])
  end
  
  def create
    @<%= singular_table_name %> = <%= class_name.singularize %>.new(params[:<%= singular_table_name %>])
    
    respond_to do |format|
      if @<%= singular_table_name %>.save
        format.html { redirect_to edit_<%= singular_table_name %>_path(@<%= singular_table_name %>) }
        format.json { render json: @<%= singular_table_name %>, status: :created, location: @<%= singular_table_name %> }
      else
        format.html { render "new" }
        format.json { render json: @<%= singular_table_name %>.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    @<%= singular_table_name %> = <%= class_name.singularize %>.find_by_slug(params[:id])
    
    respond_to do |format|
      if @<%= singular_table_name %>.update_attributes(params[:<%= singular_table_name %>])
        format.html { redirect_to all_<%= plural_table_name %>_path }
        format.json { head :ok }
      else
        format.html { render "edit" }
        format.json { render json: @<%= singular_table_name %>.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @<%= singular_table_name %> = <%= class_name.singularize %>.find_by_slug(params[:id])
    @<%= singular_table_name %>.destroy
    
    respond_to do |format|
      format.html { redirect_to all_<%= plural_table_name %>_url }
      format.json { head :ok }
    end
  end
end
