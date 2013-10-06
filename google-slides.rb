require 'google-search'
Image = Google::Search::Image

presentation do

  slide('intro', {
          title:    'Slides',
          subtitle: '..with Ruby!'
        })

  Image.new(query: 'cute dog').each do |result|
    slide('image', {
            src: result.uri
          })
  end

end
