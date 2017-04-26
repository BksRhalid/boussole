# encoding: utf-8
# frozen_string_literal: true

RSpec.describe Workings::ServiceOfferings::ContactsController, type: :controller do
  let(:working)          { create(:working) }
  let(:service_offering) { create(:service_offering) }
  let(:event_tracker)    { instance_spy(EventTracker) }
  let(:social_right)     { create(:social_right) }
  let(:public_service)   { create(:public_service) }

  before { allow(subject).to receive(:tracker) { event_tracker } }

  describe 'POST #create' do
    context 'with valid params' do
      before do
        post(
          :create,
          service_offering_id: service_offering.to_param,
          working_id: working.to_param,
          contact: attributes_for(:contact)
        )
      end

      it { expect(event_tracker).to have_received(:call).with(:jeunes, :activates_service, duck_type(:each_pair)) }
    end
  end

  context 'witout valid params' do
    before { post(:create, service_offering_id: service_offering.to_param, working_id: working.to_param) }

    it { expect(event_tracker).not_to have_received(:call) }
  end
end
