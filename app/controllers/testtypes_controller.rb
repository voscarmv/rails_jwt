class TesttypesController < ApplicationController
  before_action :authenticate_user
  before_action :set_testtype, only: [:show, :update, :destroy]

  # GET /testtypes
  def index
    @testtypes = Testtype.all

    render json: @testtypes
  end

  # GET /testtypes/1
  def show
    render json: @testtype
  end

  # POST /testtypes
  def create
    @testtype = Testtype.new(testtype_params)

    if @testtype.save
      render json: @testtype, status: :created, location: @testtype
    else
      render json: @testtype.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /testtypes/1
  def update
    if @testtype.update(testtype_params)
      render json: @testtype
    else
      render json: @testtype.errors, status: :unprocessable_entity
    end
  end

  # DELETE /testtypes/1
  def destroy
    @testtype.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testtype
      @testtype = Testtype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testtype_params
      params.require(:testtype).permit(:binary, :boolean, :date, :datetime, :decimal, :float, :integer, :string, :text, :time, :timestamp)
    end
end
