require "rubygems"
require "pry"

def check_if_user_gave_input
  puts "What would you like to know ?"
  puts ARGV
  abort("mkdir: missing input") if ARGV.empty?
end

#create the project folder
def create_project_folder(name)
  Dir.mkdir(name)
end

#choose the name of the project folder
def get_project_folder_name
  return folder_name = ARGV.first
end

def perform
  check_if_user_gave_input
  name = get_project_folder_name
  create_project_folder(name)
 
end

perform