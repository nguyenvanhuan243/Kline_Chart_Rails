class KlineChartsController < ApplicationController
  before_action :set_kline_chart, only: %i[ show edit update destroy ]

  # GET /kline_charts or /kline_charts.json
  def index
    # @kline_charts = KlineChart.all
  end

  # GET /kline_charts/1 or /kline_charts/1.json
  def show
  end

  # GET /kline_charts/new
  def new
    # @kline_chart = KlineChart.new
  end

  # GET /kline_charts/1/edit
  def edit
  end

  # POST /kline_charts or /kline_charts.json
  def create
    @kline_chart = KlineChart.new(kline_chart_params)

    respond_to do |format|
      if @kline_chart.save
        format.html { redirect_to kline_chart_url(@kline_chart), notice: "Kline chart was successfully created." }
        format.json { render :show, status: :created, location: @kline_chart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kline_chart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kline_charts/1 or /kline_charts/1.json
  def update
    respond_to do |format|
      if @kline_chart.update(kline_chart_params)
        format.html { redirect_to kline_chart_url(@kline_chart), notice: "Kline chart was successfully updated." }
        format.json { render :show, status: :ok, location: @kline_chart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kline_chart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kline_charts/1 or /kline_charts/1.json
  def destroy
    @kline_chart.destroy

    respond_to do |format|
      format.html { redirect_to kline_charts_url, notice: "Kline chart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kline_chart
      @kline_chart = KlineChart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kline_chart_params
      params.fetch(:kline_chart, {})
    end
end
