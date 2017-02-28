class TbServiciosController < ApplicationController
  before_action :set_tb_servicio, only: [:show, :edit, :update, :destroy]

  # GET /tb_servicios
  # GET /tb_servicios.json
  def index
    @tb_servicios = TbServicio.all
  end

  # GET /tb_servicios/1
  # GET /tb_servicios/1.json
  def show
  end

  # GET /tb_servicios/new
  def new
    @tb_servicio = TbServicio.new
  end

  # GET /tb_servicios/1/edit
  def edit
  end

  # POST /tb_servicios
  # POST /tb_servicios.json
  def create
    @tb_servicio = TbServicio.new(tb_servicio_params)

    respond_to do |format|
      if @tb_servicio.save
        format.html { redirect_to @tb_servicio, notice: 'Tb servicio was successfully created.' }
        format.json { render :show, status: :created, location: @tb_servicio }
      else
        format.html { render :new }
        format.json { render json: @tb_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tb_servicios/1
  # PATCH/PUT /tb_servicios/1.json
  def update
    respond_to do |format|
      if @tb_servicio.update(tb_servicio_params)
        format.html { redirect_to @tb_servicio, notice: 'Tb servicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @tb_servicio }
      else
        format.html { render :edit }
        format.json { render json: @tb_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tb_servicios/1
  # DELETE /tb_servicios/1.json
  def destroy
    @tb_servicio.destroy
    respond_to do |format|
      format.html { redirect_to tb_servicios_url, notice: 'Tb servicio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tb_servicio
      @tb_servicio = TbServicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tb_servicio_params
      params.fetch(:tb_servicio, {})
    end
end
