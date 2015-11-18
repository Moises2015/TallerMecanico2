class VehiculosController < ApplicationController
  before_action :set_vehiculo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:show, :index]

  respond_to :html

  def index
    @vehiculos = Vehiculo.all
    respond_with(@vehiculos)
  end

  def show
    respond_with(@vehiculo)
  end

  def new
    @vehiculo = Vehiculo.new
    respond_with(@vehiculo)
  end

  def edit
  end

  def create
    @vehiculo = Vehiculo.new(vehiculo_params)
    @vehiculo.save
    respond_with(@vehiculo)
  end

  def update
    @vehiculo.update(vehiculo_params)
    respond_with(@vehiculo)
  end

  def destroy
    @vehiculo.destroy
    respond_with(@vehiculo)
  end

  private
    def set_vehiculo
      @vehiculo = Vehiculo.find(params[:id])
    end

    def vehiculo_params
      params.require(:vehiculo).permit(:patente, :modelo, :fabrica, :color, :cinlidrada, :caja, :cliente_id)
    end
end
