class MybuttsController < ApplicationController
  before_action :set_mybutt, only: [:show, :edit, :update, :destroy]
  
  # GET /mybutts
  # GET /mybutts.json
  def index
    @mybutts = Mybutt.all
  end

  # GET /mybutts/1
  # GET /mybutts/1.json
  def show
  end

  # GET /mybutts/new
  def new
    @mybutt = Mybutt.new
  end

  # GET /mybutts/1/edit
  def edit
  end

  # POST /mybutts
  # POST /mybutts.json
  def create
    @mybutt = Mybutt.new(mybutt_params)

    respond_to do |format|
      if @mybutt.save
        format.html { redirect_to @mybutt, notice: 'Mybutt was successfully created.' }
        format.json { render :show, status: :created, location: @mybutt }
      else
        format.html { render :new }
        format.json { render json: @mybutt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mybutts/1
  # PATCH/PUT /mybutts/1.json
  def update
    respond_to do |format|
      if @mybutt.update(mybutt_params)
        format.html { redirect_to @mybutt, notice: 'Mybutt was successfully updated.' }
        format.json { render :show, status: :ok, location: @mybutt }
      else
        format.html { render :edit }
        format.json { render json: @mybutt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mybutts/1
  # DELETE /mybutts/1.json
  def destroy
    @mybutt.destroy
    respond_to do |format|
      format.html { redirect_to mybutts_url, notice: 'Mybutt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mybutt
      @mybutt = Mybutt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mybutt_params
      params.require(:mybutt).permit(:name, :cturl)
    end
	
end
