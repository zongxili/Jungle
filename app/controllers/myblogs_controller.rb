class MyblogsController < ApplicationController
  before_action :set_myblog, only: [:show, :edit, :update, :destroy]

  # GET /myblogs
  # GET /myblogs.json
  def index
    @myblogs = Myblog.all
  end

  # GET /myblogs/1
  # GET /myblogs/1.json
  def show
  end

  # GET /myblogs/new
  def new
    @myblog = Myblog.new
  end

  # GET /myblogs/1/edit
  def edit
  end

  # POST /myblogs
  # POST /myblogs.json
  def create
    @myblog = Myblog.new(myblog_params)

    respond_to do |format|
      if @myblog.save
        format.html { redirect_to @myblog, notice: 'Myblog was successfully created.' }
        format.json { render :show, status: :created, location: @myblog }
      else
        format.html { render :new }
        format.json { render json: @myblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myblogs/1
  # PATCH/PUT /myblogs/1.json
  def update
    respond_to do |format|
      if @myblog.update(myblog_params)
        format.html { redirect_to @myblog, notice: 'Myblog was successfully updated.' }
        format.json { render :show, status: :ok, location: @myblog }
      else
        format.html { render :edit }
        format.json { render json: @myblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myblogs/1
  # DELETE /myblogs/1.json
  def destroy
    @myblog.destroy
    respond_to do |format|
      format.html { redirect_to myblogs_url, notice: 'Myblog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myblog
      @myblog = Myblog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myblog_params
      params.fetch(:myblog, {})
    end
end
