This example uses carrierwave, carrierwave-backgrounder, and jquery-fileupload to upload and process images in the background using resque.

To use create `config/intializers/carrierwave.rb`, then run:
    
    rake db:create
    rake db:migrate
    rails s
