require 'rspec'
require 'pry'
require_relative '../last_version/box_factory'


#  Verifying behaviour that belongs to another object
describe UselessBox do
  it 'raise exception when trying to set the switch to invalid option' do

    state_machine = StateMachine.new

    state_machine.set_state(States::ON, {Actions::ON => States::ON,
                                         Actions::OFF => States::OFF})

    expect(UselessBox.new(state_machine).send(:do_action,:Ready)).to raise_error(IIlegalAction)
  end
end

describe UselessBox do
  it 'raise exception when trying to set the switch to invalid option' do

    state_machine = StateMachine.new

    state_machine.set_state(States::ON, {Actions::ON => States::ON,
                                         Actions::OFF => States::OFF})

    expect(state_machine.invoke_action(:Ready)).to raise_error(IIlegalAction)
  end
end

