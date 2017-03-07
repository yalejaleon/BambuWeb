class TbClientesController < ApplicationController
  before_action :set_tb_cliente, only: [:show, :edit, :update, :destroy]

  # GET /tb_clientes
  # GET /tb_clientes.json
  def index
    #@tb_clientes = HTTParty.get('http://192.168.0.100:8080/spa/referencias',:headers =>{'Content-Type' => 'application/json'})

    @referencias=HTTParty.get('http://192.168.0.107:8080/spa/referencias',:headers =>{'Content-Type' => 'application/json'})
    @estados=HTTParty.get('http://192.168.0.107:8080/spa/estados',:headers =>{'Content-Type' => 'application/json'})
    @ciudades=HTTParty.get('http://192.168.0.107:8080/spa/ciudades',:headers =>{'Content-Type' => 'application/json'})
    @servicios=HTTParty.get('http://192.168.0.107:8080/spa/servicios',:headers =>{'Content-Type' => 'application/json'})
    @esteticistas=HTTParty.get('http://192.168.0.107:8080/spa/esteticistas',:headers =>{'Content-Type' => 'application/json'})
  end

  # GET /tb_clientes/1
  # GET /tb_clientes/1.json
  def show
  end

  # GET /tb_clientes/new
  def new
    @tb_cliente = TbCliente.new
  end

  # GET /tb_clientes/1/edit
  def edit
  end

  # POST /tb_clientes
  # POST /tb_clientes.json
  def create
    @tb_cliente = TbCliente.new(tb_cliente_params)

    respond_to do |format|
      if @tb_cliente.save
        format.html { redirect_to @tb_cliente, notice: 'Tb cliente was successfully created.' }
        format.json { render :show, status: :created, location: @tb_cliente }
      else
        format.html { render :new }
        format.json { render json: @tb_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tb_clientes/1
  # PATCH/PUT /tb_clientes/1.json
  def update
    respond_to do |format|
      if @tb_cliente.update(tb_cliente_params)
        format.html { redirect_to @tb_cliente, notice: 'Tb cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @tb_cliente }
      else
        format.html { render :edit }
        format.json { render json: @tb_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tb_clientes/1
  # DELETE /tb_clientes/1.json
  def destroy
    @tb_cliente.destroy
    respond_to do |format|
      format.html { redirect_to tb_clientes_url, notice: 'Tb cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tb_cliente
      @tb_cliente = TbCliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tb_cliente_params
      params.require(:tb_cliente).permit(:cedula, :nombre, :apellido, :correo, :codigo_ciudad, :telefono)
    end
end
