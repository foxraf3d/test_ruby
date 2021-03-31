require 'yaml'
require 'logger'

def get_screen_mappings(screen, folder)
  $platform = ENV['PLATFORM_NAME'].downcase
  dir = "#{Dir.pwd}/features/#{folder}/elements/#{$platform}/screen_mappings_#{screen}.yaml"
  puts(dir)
  screen_mappings = YAML.load_file(dir)
  @mappings = screen_mappings
end