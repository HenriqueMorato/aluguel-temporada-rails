class PropertyTypesController < ApplicationController

  before_action :set_property_type, only: [:show]

  def show
  end

  def new
    @property_type = PropertyType.new
  end

  def create
    @property_type = PropertyType.new(property_type_params)
    if @property_type.save
      flash[:message] = 'Tipo de imóvel cadastrado com sucesso'
      redirect_to @property_type
    else
      render :new
    end
  end

  private
  def set_property_type
    @property_type = PropertyType.find(params[:id])
  end

  def property_type_params
    params.require(:property_type).permit(:name)
  end
end
