
#
# Data..
require 'google-search'
query = 'cute dog'
results = Google::Search::Image.new(query: query)
images = results.map { |result| result.uri }

#
# Slides..
presentation do

  title 'Cute Dogs!'
  theme 'serif'
  transition 'fade'

  slide('intro', {
          title:    'Slides',
          subtitle: '..with Ruby!'
        })

  images.each do |url|
    slide('image', {
            src: url
          })
  end

end
