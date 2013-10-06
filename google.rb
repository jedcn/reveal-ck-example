presentation do
  require 'google-search'
  Image = Google::Search::Image
  Image.new(query: 'cute dog').each do |image|
    slide 'image', src: image.uri
  end
end
