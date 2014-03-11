require './lib/to_do'

@lists = []

def main_menu
  puts "Welcome to List Maker \n\n"
  puts "Press l to make a new list"
  puts "Press x to exit the program"
  puts "Enter the name of a list to access the list"
  main_input = gets.chomp
  if main_input == 'l'
    list_maker
  elsif main_input == 'x'
    puts "Goodbye"
  else
    @lists.each do |list|
      if main_input == list.list_name
        list.tasks.each do |current_task|
        puts "You need to do: #{current_task.description}"
        end
      end
    end

    puts "Press Y to add to this list, press D to delete a task, or any key to return to main menu"
    answer = gets.chomp
    if answer == 'Y'
      puts "Enter a task to add to #{list_name}"
      new_task = gets.chomp
      list.tasks << Task.new(new_task)
      main_menu
    elsif answer == "D"
      puts "Enter the task you want to delete:"
      kill_task = gets.chomp.to_i
      list.tasks.delete_at(kill_task -1)
      main_menu
    else
      main_menu
    end

  end
end

def list_maker 
  puts "What would you like to name your list?"
  list_name = gets.chomp
  new_list = List.new(list_name)
  @lists << new_list
  puts "Press t to add a task to your list"
  puts "Press m to return to the main menu"
  list_input = gets.chomp
  if list_input == "t"
    task_maker(new_list)
  elsif list_input == "m"
    main_menu
  else
    puts "Please enter 't' for a new task or 'm' to retrun to main menu"
  end
end

def task_maker(list)
  puts "Enter a task to add to #{list.list_name}"
  new_task = gets.chomp
  list.add_task(new_task)
  puts "Press t to add another task to your list"
  puts "Press m to return to the main menu"
  task_input = gets.chomp
  if task_input == "t"
    task_maker(list)
  elsif task_input == "m"
    main_menu
  else
    puts "Please enter 't' for a new task or 'm' to return to main menu"
  end
end

main_menu

