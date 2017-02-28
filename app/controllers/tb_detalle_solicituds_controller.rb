class TbDetalleSolicitudsController < ApplicationController
  before_action :set_tb_detalle_solicitud, only: [:show, :edit, :update, :destroy]

  # GET /tb_detalle_solicituds
  # GET /tb_detalle_solicituds.json
  def index
    @tb_detalle_solicituds = TbDetalleSolicitud.all
  end

  # GET /tb_detalle_solicituds/1
  # GET /tb_detalle_solicituds/1.json
  def show
  end

  # GET /tb_detalle_solicituds/new
  def new
    @tb_detalle_solicitud = TbDetalleSolicitud.new
  end

  # GET /tb_detalle_solicituds/1/edit
  def edit
  end

  # POST /tb_detalle_solicituds
  # POST /tb_detalle_solicituds.json
  def create
    @tb_detalle_solicitud = TbDetalleSolicitud.new(tb_detalle_solicitud_params)

    respond_to do |format|
      if @tb_detalle_solicitud.save
        format.html { redirect_to @tb_detalle_solicitud, notice: 'Tb detalle solicitud was successfully created.' }
        format.json { render :show, status: :created, location: @tb_detalle_solicitud }
      else
        format.html { render :new }
        format.json { render json: @tb_detalle_solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tb_detalle_solicituds/1
  # PATCH/PUT /tb_detalle_solicituds/1.json
  def update
    respond_to do |format|
      if @tb_detalle_solicitud.update(tb_detalle_solicitud_params)
        format.html { redirect_to @tb_detalle_solicitud, notice: 'Tb detalle solicitud was successfully updated.' }
        format.json { render :show, status: :ok, location: @tb_detalle_solicitud }
      else
        format.html { render :edit }
        format.json { render json: @tb_detalle_solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tb_detalle_solicituds/1
  # DELETE /tb_detalle_solicituds/1.json
  def destroy
    @tb_detalle_solicitud.destroy
    respond_to do |format|
      format.html { redirect_to tb_detalle_solicituds_url, notice: 'Tb detalle solicitud was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tb_detalle_solicitud
      @tb_detalle_solicitud = TbDetalleSolicitud.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tb_detalle_solicitud_params
      params.fetch(:tb_detalle_solicitud, {})
    end
end
