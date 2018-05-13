class FormsController < ApplicationController
  def index
    @form = Form.all
  end

  def edit
    @form = Form.find(params[:id])
  end

  def update
    form = Form.find(params[:id])
    form.update(form_for_params)
  end

  def new
    @form = Form.new
  end

  def create
    Form.create(form_for_params)
  end

  def destroy
    form = Form.find(params[:id])
    form.destroy
  end

  private

  def form_params
    params.permit(:food, :sports, :book, :foods, :gender, :programming)
  end

  def form_for_params
    params.require(:form).permit(:food, :sports, :book, :foods, :gender, :programming)
  end
end
