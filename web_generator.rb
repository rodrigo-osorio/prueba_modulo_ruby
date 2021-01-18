require_relative 'request'
require_relative 'build'

data = request('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=3YtiL5HFOxlcGitgatIkQWCSaM3nWhBL1BMjK0sc')['photos']
