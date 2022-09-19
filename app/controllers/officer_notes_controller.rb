class OfficerNotesController < ApplicationController
  before_action :set_officer_note, only: %i[ show edit update destroy ]

  # GET /officer_notes or /officer_notes.json
  def index
    @officer_notes = OfficerNote.all
  end

  # GET /officer_notes/1 or /officer_notes/1.json
  def show
  end

  # GET /officer_notes/new
  def new
    @officer_note = OfficerNote.new
  end

  # GET /officer_notes/1/edit
  def edit
  end

  # POST /officer_notes or /officer_notes.json
  def create
    @officer_note = OfficerNote.new(officer_note_params)

    respond_to do |format|
      if @officer_note.save
        format.html { redirect_to officer_note_url(@officer_note), notice: "Officer note was successfully created." }
        format.json { render :show, status: :created, location: @officer_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @officer_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /officer_notes/1 or /officer_notes/1.json
  def update
    respond_to do |format|
      if @officer_note.update(officer_note_params)
        format.html { redirect_to officer_note_url(@officer_note), notice: "Officer note was successfully updated." }
        format.json { render :show, status: :ok, location: @officer_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @officer_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /officer_notes/1 or /officer_notes/1.json
  def destroy
    @officer_note.destroy

    respond_to do |format|
      format.html { redirect_to officer_notes_url, notice: "Officer note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_officer_note
      @officer_note = OfficerNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def officer_note_params
      params.require(:officer_note).permit(:memID, :pComplete, :ranking, :notes)
    end
end
