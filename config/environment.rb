# Load the rails application
require File.expand_path('../application', __FILE__)
Paperclip.options[:command_path] = 'C:/imagick'
# Initialize the rails application
BnegajiForum::Application.initialize!
