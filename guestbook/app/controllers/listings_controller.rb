class ListingsController < ApplicationController
    def new
    end
    
    def index
        @listings = Listing.all
    end
    
    def create
         
    @listing = Listing.new(listing_params)

 
    @listing.save
    redirect_to :action => 'index'
    end
    
    def show
    @listing = Listing.find(params[:id])
    end
    
    private
    def listing_params
        params.require(:listing).permit(:name, :message)
    end
end
