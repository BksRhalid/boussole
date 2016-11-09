# encoding: utf-8
# frozen_string_literal: true

class WorkingsController < ApplicationController
  require_feature :working

  # Tracking
  after_action :track_starts_form, only: :create

  # Tracking
  after_action :track_finishes_form, only: :show

  # GET /workings/1
  def show
    @working           = Working.find(params[:id])
    @service_offerings = Working::ServiceOfferings.present(params).scope
  end

  # POST /workings
  def create
    @working = Working.new
    @working.save(validate: false)
    redirect_to(working_step_path(@working, Working::STEPS.first))
  end

  private

  def track_starts_form
    tracker.(:jeunes, :starts_form, working_id: @working.to_param)
  end

  def track_finishes_form
    tracker.(:jeunes, :finishes_form, working: WorkingDecorator.(@working), servive_offering_count: @service_offerings.count)
  end
end
