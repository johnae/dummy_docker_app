require "sinatra/base"

VERSION="0.0.1"
GIT_REV=`git rev-parse --short HEAD`
HOSTNAME=`hostname`

class MyApp < Sinatra::Base
  get '/' do
    "Version #{VERSION}, revision: #{GIT_REV}, hostname: #{HOSTNAME} - hello!"
  end
end
