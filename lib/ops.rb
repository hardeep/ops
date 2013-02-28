begin
  require 'bundler/setup'
rescue LoadError
  require 'rubygems'
  require 'bundler'
end

# standard gems
  require 'json'
  require 'etc'
  require 'pathname'
  require 'pp'

# external gems
  require 'net/ssh'
  require 'i18n'
  require 'rake'
  require 'aws-sdk'

# local includes
  require 'host'

def root_dir
  File.dirname( File.dirname( __FILE__ ) )
end unless defined? root_dir

# load all i18n strings
string_search = File.join( root_dir, "res", "strings/**/*.yml" )
string_files = Dir[ string_search ]
I18n.load_path << string_files
