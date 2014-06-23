require 'rspec'
require 'pry'
require_relative '../last_version/box_factory'

describe UselessBox do
  it 'Cover should be opened' do
    cover_unit = ServoMotor.new('Cover',50)

    expect(cover_unit.current_value).to eq(100)
  end


  it 'Handle should be opened' do
    handle_unit = ServoMotor.new('Handle',50)

    expect(handle_unit.current_value).to eq(100)
  end

  it 'is fully activated' do
    cover_unit = ServoMotor.new('Cover',50)

    expect(cover_unit.current_value).to eq(100)

    handle_unit = ServoMotor.new('Handle',50)

    expect(handle_unit.current_value).to eq(100)
  end


end
