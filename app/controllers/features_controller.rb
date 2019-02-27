class FeaturesController < ApplicationController
	before_action :set_feature, only: [:show, :destroy]

  def index
    @features = Feature.all
  end

	def new
    @feature = Feature.new
  end

  def create
    @feature = Feature.new(feature_params)

    if @feature.valid? && @feature.save
      FeatureMailer.new_feature(@feature).deliver unless feature_params[:honey].present?
      redirect_to root_path, notice: "Your form has been sent. Thank you for reaching out."
    else
      render :new
    end
  end

  def show 
  end

  def destroy
    @feature.destroy

    redirect_to root_path
  end

  private
	  def set_feature
			@feature = Feature.find(params[:id])
	  end

    def feature_params
      params.require(:feature).permit(:name,:email,:phone,:organization,:link,:deadline,:feat_type,:details,:honey)
    end
end
