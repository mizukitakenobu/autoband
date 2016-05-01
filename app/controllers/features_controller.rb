class FeaturesController < ApplicationController
  before_action :set_feature, only: [:show, :edit, :update, :destroy]

  # GET /features
  # GET /features.json
  def index
    if params[:qnum].blank?
      @qnum = 1
    else
      set_answer(params[:qnum])
      @qnum = params[:qnum].to_i + 1
    end
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

    def set_answer(qnum)
      if qnum == "1"
        session[:sex] = params[:commit]
      elsif qnum == "2"
        session[:age] = params[:age]
      elsif qnum == "3"
        session[:part] = params[:commit]
      elsif qnum == "4"
        session[:pref] = params[:pref]
      elsif qnum == "5"
        session[:major] = params[:major]
      end
    end
end
