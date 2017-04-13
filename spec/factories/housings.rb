# encoding: utf-8
# frozen_string_literal: true

FactoryGirl.define do
  factory(:housing) do
    duration        HOUSING_DURATIONS.first
    housing_city    CITIES.first
    current_status  STATUSES.first
    age             { rand(0..123) }

    trait(:housing) { current_step(:housing) }
    trait(:profile) { current_step(:profile) }
  end
end
