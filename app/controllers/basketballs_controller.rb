class BasketballsController < ApplicationController
  before_action :set_basketball, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /basketballs
  # GET /basketballs.json
  def index
    @basketballs = Basketball.all
  end

  # GET /basketballs/1
  # GET /basketballs/1.json
  def show
  end

  # GET /basketballs/new
  def new
    @basketball = current_user.basketballs.build
  end

  # GET /basketballs/1/edit
  def edit
  end

  # POST /basketballs
  # POST /basketballs.json
  def create
    @basketball = current_user.basketballs.build(basketball_params)

    respond_to do |format|
      if @basketball.save
        format.html { redirect_to @basketball, notice: 'Basketball was successfully created.' }
        format.json { render :show, status: :created, location: @basketball }
      else
        format.html { render :new }
        format.json { render json: @basketball.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basketballs/1
  # PATCH/PUT /basketballs/1.json
  def update
    respond_to do |format|
      if @basketball.update(basketball_params)
        format.html { redirect_to @basketball, notice: 'Basketball was successfully updated.' }
        format.json { render :show, status: :ok, location: @basketball }
      else
        format.html { render :edit }
        format.json { render json: @basketball.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basketballs/1
  # DELETE /basketballs/1.json
  def destroy
    @basketball.destroy
    respond_to do |format|
      format.html { redirect_to basketballs_url, notice: 'Basketball was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basketball
      @basketball = Basketball.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def basketball_params
      params.require(:basketball).permit(:name, :team, :facts, :user_id)
    end
end
