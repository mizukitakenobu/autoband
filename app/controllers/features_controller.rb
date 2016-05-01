class FeaturesController < ApplicationController
  before_action :set_feature, only: [:show, :edit, :update, :destroy]

  # GET /features
  # GET /features.json
  def index
    @val = "test"
    @val = params[:answer] unless params[:answer].blank?
  end

  # GET /features/1
  # GET /features/1.json
  def show
  end

  # GET /features/new
  def new
  end

  # GET /features/1/edit
  def edit
  end

  # POST /features
  # POST /features.json
  def create
  end

  # PATCH/PUT /features/1
  # PATCH/PUT /features/1.json
  def update
  end

  # DELETE /features/1
  # DELETE /features/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feature
      @feature = Feature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feature_params
      params.fetch(:feature, {})
    end
end
