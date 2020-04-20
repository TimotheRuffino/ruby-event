
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
  folder_name = ARGV.join("_")
end

#create the ruby file of the project
def create_project_file
  File.open "#{ARGV.join("_")}.rb", "w"
end

#create the spec file of the project
def create_spec_project_file
  File.open "#{ARGV.join("_")}_spec.rb", "w"
end

#create the README file
def create_readme_file
  File.open "README.md", "w"
end

def create_gemfile
  File.open "Gemfile", "w"
end

#move spec_project_file and project_file in lib folder
def move_files
  project_folder_name = get_project_folder_name
  FileUtils.mv(./project_folder_name/create_spec_project_file, ./project_folder_name/lib/create_spec_project_file)
end



def perform
  check_if_user_gave_input
  name = get_project_folder_name
  create_project_folder(name)
  create_project_file
  create_spec_project_file
  create_gemfile
  create_readme_file
  move_files
end

perform