require "sinatra/base"

VERSION="0.0.1"
GIT_REV=`git rev-parse --short HEAD`

class MyApp < Sinatra::Base
  get '/' do
    "Version #{VERSION}, #{GIT_REV}"
  end
end
