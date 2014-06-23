require 'rspec'
require 'pry'
require_relative '../last_version/box_factory'

#  Example of state query test
describe ServoMotor do
  it 'starts with 0' do

    servo_motor = ServoMotor.new('test_motor',50)

    servo_value = servo_motor.current_value

    expect(servo_value).to eq(0)
  end
end

# Example of state command test
describe ServoMotor do
  it 'changes to 100' do

    servo_motor = ServoMotor.new('test_motor',50)

    servo_motor.change_value_to(100)

    # Probably it is not a good idea to verify that with a private method
    expect(servo_motor.current_value).to eq(100)
  end
end