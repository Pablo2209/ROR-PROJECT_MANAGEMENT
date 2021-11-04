class RequestsController < ApplicationController
  before_action :set_request, only: %i[ show edit update destroy ]

  # GET /requests or /requests.json
  def index
    @requests = Request.all

    #Generar PDF
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'requests/report', pdf:'Report'}
    end
  end

  # GET /requests/1 or /requests/1.json
  def show
      #Generar PDF
      respond_to do |format|
        format.html
        format.json
        format.pdf {render template:'requests/reposw', pdf:'Report'}
      end
  end

  # GET /requests/new
  def new
    @request = Request.new
    #Relacion con la tabla N
    @projects = Project.all
    #Relacion con la tabla INTERMEDIA
    @request.projects_requests.build

  end

  # GET /requests/1/edit
  def edit
    #Relacion con la tabla N
    @projects = Project.all
    #Relacion con la tabla INTERMEDIA
    @request.projects_requests.build
  end

  # POST /requests or /requests.json
  def create
    @request = Request.new(request_params)

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: "Request was successfully created." }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1 or /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: "Request was successfully updated." }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1 or /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: "Request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def request_params
      params.require(:request).permit(:name, :type, :d_day, :city, :n_day, :viatic, :state, {projects_requests_attributes: [:id, :project_id]})
    end
end
