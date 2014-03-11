class List
  def initialize(title)
    @title = title
    @tasks = []
  end

  def list_name
    @title
  end

  def tasks
    @tasks
  end

  def add_task(description)
    @tasks << Task.new(description)
  end

  # def add_task(new_task)
  #   @tasks << new_task
  # end
end

class Task
  def initialize(description)
    @description = description
  end

  def description
    @description
end
end

# new_list = List.new("Chores")
# puts new_list.list_name
# # new_task = Task.new("Mow grass")
# # puts new_task.description
# # new_list.add_task(new_task)
# # puts new_list.tasks[0].description
# new_list.add_task("Paint house")
# puts new_list.tasks[0].description
