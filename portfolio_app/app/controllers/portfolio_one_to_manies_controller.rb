class PortfolioOneToManiesController < ApplicationController
  before_action :set_portfolio_one_to_many, only: %i[ show edit update destroy ]

  # GET /portfolio_one_to_manies or /portfolio_one_to_manies.json
  def index
    @portfolio_one_to_manies = PortfolioOneToMany.all
  end

  # GET /portfolio_one_to_manies/1 or /portfolio_one_to_manies/1.json
  def show
  end

  # GET /portfolio_one_to_manies/new
  def new
    @portfolio_one_to_many = PortfolioOneToMany.new
  end

  # GET /portfolio_one_to_manies/1/edit
  def edit
  end

  # POST /portfolio_one_to_manies or /portfolio_one_to_manies.json
  def create
    @portfolio_one_to_many = PortfolioOneToMany.new(portfolio_one_to_many_params)

    respond_to do |format|
      if @portfolio_one_to_many.save
        format.html { redirect_to portfolio_one_to_many_url(@portfolio_one_to_many), notice: "Portfolio one to many was successfully created." }
        format.json { render :show, status: :created, location: @portfolio_one_to_many }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portfolio_one_to_many.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolio_one_to_manies/1 or /portfolio_one_to_manies/1.json
  def update
    respond_to do |format|
      if @portfolio_one_to_many.update(portfolio_one_to_many_params)
        format.html { redirect_to portfolio_one_to_many_url(@portfolio_one_to_many), notice: "Portfolio one to many was successfully updated." }
        format.json { render :show, status: :ok, location: @portfolio_one_to_many }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @portfolio_one_to_many.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolio_one_to_manies/1 or /portfolio_one_to_manies/1.json
  def destroy
    @portfolio_one_to_many.destroy!

    respond_to do |format|
      format.html { redirect_to portfolio_one_to_manies_url, notice: "Portfolio one to many was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_one_to_many
      @portfolio_one_to_many = PortfolioOneToMany.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def portfolio_one_to_many_params
      params.fetch(:portfolio_one_to_many, {})
    end
end
