class FlickrOdinController < ApplicationController
  require 'flickr'

  # The credentials can be provided as parameters:
  
  # = Flickr.new "YOUR API KEY", "YOUR SHARED SECRET"
  
  # Alternatively, if the API key and Shared Secret are not provided, Flickr will attempt to read them
  # from environment variables:
  # ENV['FLICKR_API_KEY']
  # ENV['FLICKR_SHARED_SECRET']
  
  #flickr = Flickr.new
  
  # Flickr will raise an error if either parameter is not explicitly provided, or available via environment variables.

  def index

  @flickr = Flickr.new ENV['access_key_id'], ENV['secret_access_key']
   
        
 
    if params[:user_id]
      begin
          @photos = @flickr.photos.search(user_id: params[:user_id])

          
        rescue Flickr::FailedResponse
         
          @photos = @flickr.photos.getRecent
          # debugger
        end
        else
         
              @photos = @flickr.photos.getRecent
        end
end
 
   
   
  end


