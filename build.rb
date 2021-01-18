
def build_web_page(data)
    html = '
            <!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
                <title>Mars Rover Photos</title>
            </head>
            <body>
                <h1 class="text-center mt-5 mb-5" >Mars Rover Photos</h1>
    
                <ul class="container text-center">
                
                    '+extract_photos(data)+'

                </ul>
                
                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
            </body>
            </html>
            '
end

def extract_photos(data_photos)

    mars_rover_images = ''
    data_photos.each do |photo|

        mars_rover_images += "<li><img src="+photo["img_src"]+" alt= ""Not found"" class=""mb-4""></li>\n"

    end
    return mars_rover_images

end

def photo_count(data)

    camera_names = Array.new(0)

    data.each do |element|
        camera_names.push (element['camera']['name'])
    end

    count_photos = Hash.new(0)
    
    camera_names.each do |name|
        count_photos[name] +=1
    end
    
    return count_photos
end
