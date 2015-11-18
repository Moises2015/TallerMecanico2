class FichasController < ApplicationController
  before_action :set_ficha, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!, except: [:show, :index]

  respond_to :html

  def index
    @fichas = Ficha.all
    respond_with(@fichas)
  end

  def show
    respond_with(@ficha)
  end

  def new
    @ficha = Ficha.new
    respond_with(@ficha)
  end

  def edit
  end

  def create
    @ficha = Ficha.new(ficha_params)
    @ficha.save
    respond_with(@ficha)
  end

  def update
    @ficha.update(ficha_params)
    respond_with(@ficha)
  end

  def destroy
    @ficha.destroy
    respond_with(@ficha)
  end

  private
    def set_ficha
      @ficha = Ficha.find(params[:id])
    end

    def ficha_params
      params.require(:ficha).permit(:numeroficha, :falla, :diagnostico, :total, :vehiculo_id, :cliente_id)
    end
end
