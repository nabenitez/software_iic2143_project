class ExternalEventsController < ApplicationController
  before_action :set_external_event, only: [:show, :edit, :update, :destroy]

  # GET /external_events
  # GET /external_events.json
  def index
    @external_events = ExternalEvent.all
  end

  # GET /external_events/1
  # GET /external_events/1.json
  def show
  end

  # GET /external_events/new
  def new
    @external_event = ExternalEvent.new
  end

  # GET /external_events/1/edit
  def edit
  end

  # POST /external_events
  # POST /external_events.json
  def create
    @external_event = ExternalEvent.new(external_event_params)

    respond_to do |format|
      if @external_event.save
        format.html { redirect_to @external_event, notice: 'External event was successfully created.' }
        format.json { render :show, status: :created, location: @external_event }
      else
        format.html { render :new }
        format.json { render json: @external_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /external_events/1
  # PATCH/PUT /external_events/1.json
  def update
    respond_to do |format|
      if @external_event.update(external_event_params)
        format.html { redirect_to @external_event, notice: 'External event was successfully updated.' }
        format.json { render :show, status: :ok, location: @external_event }
      else
        format.html { render :edit }
        format.json { render json: @external_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /external_events/1
  # DELETE /external_events/1.json
  def destroy
    @external_event.destroy
    respond_to do |format|
      format.html { redirect_to external_events_url, notice: 'External event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_external_event
      @external_event = ExternalEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def external_event_params
      params.require(:external_event).permit(:start, :end)
    end
end
