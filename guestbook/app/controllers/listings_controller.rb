class ListingsController < ApplicationController
    def new
        @listing = Listing.new
    end
    
    def index
        @listing = Listing.new
        @listings = Listing.all
    end
    
    def create
      @listings = Listing.all
      @listing = Listing.new(listing_params)
  
      if @listing.save
          flash[:success] = "Your entry has been posted!"
        redirect_to :action => 'index'
      else 
          render 'index'
      end
    end
    
    def show
    @listing = Listing.find(params[:id])
    end
    
    def destroy
      @listing = Listing.find(params[:id])
      @listing.destroy
      flash[:success] = "Your entry has been deleted!"
      redirect_to listings_path
    end
    
    private
    def listing_params
        params.require(:listing).permit(:name, :message)
    end
end
