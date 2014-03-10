require 'rspec'
require 'to_do'

describe List do
  it("will initialize a new list") do
    test_list = List.new("Chores")
    test_list.should be_an_instance_of List
  end
end

  describe 'list_name' do
    it("will let you print out the title of the list") do
      test_list = List.new("Chores")
      test_list.list_name.should eq 'Chores'
    end
  end

  describe 'add_task' do
    it("will add a new task object to the tasks array of the current list") do
      test_list = List.new("Chores")
      test_task = test_list.add_task("Paint house")
      test_list.tasks[0].description.should eq "Paint house"
    end
  end

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

