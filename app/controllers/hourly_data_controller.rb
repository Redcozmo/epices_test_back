class HourlyDataController < ApplicationController
  def index
    @hourly_data = HourlyDatum.all
  end

  def pre_import
    @data = Visualize.new(params[:file])
  end

  def import
    # HourlyDatum.import(params[:file])
    Import.new(params[:file]).daily_sum
    redirect_to hourly_data_path, notice: "Données importées avec succès !"
  end
end
