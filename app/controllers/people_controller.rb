# frozen_string_literal: true

# Handles people
class PeopleController < ApplicationController
  before_action :set_person, only: %i[show edit update destroy]

  # GET /people
  def index
    @people = Person.all
  end

  # GET /people/1
  def show; end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit; end

  # POST /people
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html do
          redirect_to(@person, notice: 'Person was successfully created.')
        end
        format.json { render :show, status: :created, location: @person }
      else
        format.html do
          render :new
        end
        format.json do
          render json: @person.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /people/1
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html do
          redirect_to(@person, notice: 'Person was successfully updated.')
        end
        format.json do
          render :show, status: :ok, location: @person
        end
      else
        format.html do
          render :edit
        end
        format.json do
          render json: @person.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
    respond_to do |format|
      format.html do
        redirect_to(people_url, notice: 'Person was successfully destroyed.')
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_person
    @person = Person.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list
  # through.
  def person_params
    params.require(:person).permit(:firstname)
  end
end
