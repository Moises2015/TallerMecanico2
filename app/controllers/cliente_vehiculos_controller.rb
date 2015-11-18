class ClienteVehiculosController < ApplicationController
  before_action :set_cliente_vehiculo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:show, :index]

  respond_to :html

  def index
    @cliente_vehiculos = ClienteVehiculo.all
    respond_with(@cliente_vehiculos)
  end

  def show
    respond_with(@cliente_vehiculo)
  end

  def new
    @cliente_vehiculo = ClienteVehiculo.new
    respond_with(@cliente_vehiculo)
  end

  def edit
  end

  def create
    @cliente_vehiculo = ClienteVehiculo.new(cliente_vehiculo_params)
    @cliente_vehiculo.save
    respond_with(@cliente_vehiculo)
  end

  def update
    @cliente_vehiculo.update(cliente_vehiculo_params)
    respond_with(@cliente_vehiculo)
  end

  def destroy
    @cliente_vehiculo.destroy
    respond_with(@cliente_vehiculo)
  end

  private
    def set_cliente_vehiculo
      @cliente_vehiculo = ClienteVehiculo.find(params[:id])
    end

    def cliente_vehiculo_params
      params.require(:cliente_vehiculo).permit(:cliente_id, :vehiculo_id)
    end
end
