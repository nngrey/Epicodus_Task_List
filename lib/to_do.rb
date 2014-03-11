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

end

class Task
  def initialize(description)
    @description = description
  end

  def description
    @description
end
end

