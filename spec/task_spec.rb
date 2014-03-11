require 'rspec'
require 'to_do'
require 'to_do_spec'

describe Task do
  it("will initialize a new task") do
    test_task = Task.new("Mow grass")
    test_task.should be_an_instance_of Task
  end
end

  describe 'description' do
    it 'lets you read the description out' do
      test_task = Task.new("Mow the grass")
      test_task.description.should eq 'Mow the grass'
    end
  end

