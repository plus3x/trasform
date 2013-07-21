class FormsController < ApplicationController
  # GET /forms
  # GET /forms.json
  def index
    @forms = Form.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @forms }
    end
  end

  # GET /forms/1
  # GET /forms/1.json
  def show
    @form = Form.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @form }
    end
  end

  # GET /forms/new
  # GET /forms/new.json
  def new
    @form = Form.new
    
    @categories_with_parent_path = {}
    category_matchers = [/\A(\d+\.){1}\z/, /\A(\d+\.){2}\z/, /\A(\d+\.){3}\z/, /\A(\d+\.){4}\z/]

    category_matchers.each do |matcher|
      matched_categories = Category.all.sory_by(&:path).select { |category| category.path =~ matcher }
      @categories_with_parent_path[matched_categories.first.path] = matched_categories
    end

    #@level_1_categories = Category.all.select { |category| category.path =~ /\A\d+\.\z/ }

    #level_2_categories = Category.all.select { |category| category.path =~ /\A\d+\.\d+\.\z/ }
    #@level_2_categories_with_parent_ids = {}
    #@level_1_categories.each do |cat|
    #  @level_2_categories_with_parent_ids[cat.path] = level_2_categories.select { |c| c.path =~ /\A#{cat.id}+\./ }
    #end

    #level_3_categories = Category.all.select { |category| category.path =~ /\A\d+\.\d+\.\d+\.\z/ }
    #@level_3_categories_with_parent_ids = {}
    #level_2_categories.each do |cat|
    #  @level_3_categories_with_parent_ids[cat.path] = level_3_categories.select { |c| c.path =~ /\A\d+\.#{cat.id}+\./ }
    #end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @form }
    end
  end

  # GET /forms/1/edit
  def edit
    @form = Form.find(params[:id])
  end

  # POST /forms
  # POST /forms.json
  def create
    @form = Form.new(params[:form])

    respond_to do |format|
      if @form.save
        format.html { redirect_to @form, notice: 'Form was successfully created.' }
        format.json { render json: @form, status: :created, location: @form }
      else
        format.html { render action: "new" }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /forms/1
  # PUT /forms/1.json
  def update
    @form = Form.find(params[:id])

    respond_to do |format|
      if @form.update_attributes(params[:form])
        format.html { redirect_to @form, notice: 'Form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/1
  # DELETE /forms/1.json
  def destroy
    @form = Form.find(params[:id])
    @form.destroy

    respond_to do |format|
      format.html { redirect_to forms_url }
      format.json { head :no_content }
    end
  end
end
