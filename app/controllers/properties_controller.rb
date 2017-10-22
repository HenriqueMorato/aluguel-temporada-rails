class PropertiesController < ApplicationController

  before_action :set_property, only: [:show]

  def show
  end

  def new
    @property_types = PropertyType.all
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      flash[:message] = 'Imóvel cadastrado com sucesso'
      redirect_to @property
    else
      @property_types = PropertyType.all    
      render :new
    end
  end

  private
  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:title, :location, :area, :description, :daily_rate,
                                     :rooms, :minimum_rent_days, :maximum_rent_days,
                                     :maximum_occupancy, :usage_rules, :photo, :property_type_id)
  end
end
