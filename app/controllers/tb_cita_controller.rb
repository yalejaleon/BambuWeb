class TbCitaController < ApplicationController
  before_action :set_tb_citum, only: [:show, :edit, :update, :destroy]

  # GET /tb_cita
  # GET /tb_cita.json
  def index
    @tb_cita = TbCitum.all
  end

  # GET /tb_cita/1
  # GET /tb_cita/1.json
  def show
  end

  # GET /tb_cita/new
  def new
    @tb_citum = TbCitum.new
  end

  # GET /tb_cita/1/edit
  def edit
  end

  # POST /tb_cita
  # POST /tb_cita.json
  def create
    @tb_citum = TbCitum.new(tb_citum_params)

    respond_to do |format|
      if @tb_citum.save
        format.html { redirect_to @tb_citum, notice: 'Tb citum was successfully created.' }
        format.json { render :show, status: :created, location: @tb_citum }
      else
        format.html { render :new }
        format.json { render json: @tb_citum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tb_cita/1
  # PATCH/PUT /tb_cita/1.json
  def update
    respond_to do |format|
      if @tb_citum.update(tb_citum_params)
        format.html { redirect_to @tb_citum, notice: 'Tb citum was successfully updated.' }
        format.json { render :show, status: :ok, location: @tb_citum }
      else
        format.html { render :edit }
        format.json { render json: @tb_citum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tb_cita/1
  # DELETE /tb_cita/1.json
  def destroy
    @tb_citum.destroy
    respond_to do |format|
      format.html { redirect_to tb_cita_url, notice: 'Tb citum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tb_citum
      @tb_citum = TbCitum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tb_citum_params
      params.fetch(:tb_citum, {})
    end
end
