require 'rspec'
require 'pry'
require_relative '../last_version/box_factory'

describe UselessBox do
  it 'turns on after activations' do

    state_on = mock('state_on')

    state_machine = stub(current_state: States::OFF, invoke_action: state_on)

    useless_box = UselessBox.new(state_machine)

    state_on.should_not_receive(:do_state)

    useless_box.flip_switch
  end
end
