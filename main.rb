require './lib/to_do'
@lists = []
def main_menu
  puts "Press l to make a new list"
  puts "Press x to exit the program"
  puts "Enter the name of a list to access the list"
  main_input = gets.chomp
  if main_input == 'l'
    puts "What would you like to name your list?"
    list_name = gets.chomp
    new_list = List.new(list_name)
    @lists << new_list
    puts "Enter a task to add to #{list_name}"
    new_task = gets.chomp
    new_list.add_task(new_task)
    main_menu
  elsif main_input == 'x'
    puts "Goodbye"
  else
    @lists.each do |list|
    if main_input == list.list_name
      list.tasks.each do |current_task|
      puts "You need to do: #{current_task.description}"
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
  # else
  #   puts "Please enter a valid input....."
  #   main_menu
 end
end
main_menu

