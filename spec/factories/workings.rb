# encoding: utf-8
# frozen_string_literal: true

FactoryGirl.define do
  factory(:working) do
    awareness            AWARENESSES.first
    sector               SECTORS.first
    duration             WORKING_DURATIONS.first
    engagement           ENGAGEMENTS.first
    city                 CITIES.first

    trait(:awareness)    { current_step(:awareness) }
    trait(:project)      { current_step(:project) }
    trait(:situation)    { current_step(:situation) }
    trait(:inscriptions) { current_step(:inscriptions) }
  end
end
