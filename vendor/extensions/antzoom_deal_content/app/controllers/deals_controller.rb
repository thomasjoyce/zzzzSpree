class DealsController < Spree::BaseController
  
  # GET /deals
  # GET /deals.xml
  def index

    if params[:brand_id]  
         @brand = Brand.find(params[:brand_id])
         @deals= @brand.deals
    else 
         @deals = Deal.all
    end
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @deals }
    end
  end
  
  # GET /deals/new
  # GET /deals/new.xml
  def new
     
    @brand = Brand.find(params[:brand_id])
    @deal = @brand.deals.build
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @deal }
    end
  end
  
  def show   
    
    if params[:brand_id]  
       @brand = Brand.find(params[:brand_id])
       @deal= @brand.deals.find(params[:id])
    else 
       @deal = Deal.find(params[:id])
    end   
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @deal }
    end
  end
  
  # POST /deals
  # POST /deals.xml
  def create
    
    @brand = Brand.find(params[:brand_id])
    @deal = @brand.deals.build(params[:deal])
    
    respond_to do |format|
      if @deal.save
        format.any(:xml, :json) { render request.format.to_sym => @deal }
        format.html { redirect_to(brand_deals_url, :notice => 'Deal was successfully created.') }
        format.xml  { render :xml => @deal, :status => :created, :location => @deal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @deal.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  # GET /deals/1/edit
  def edit
    
     @brand = Brand.find(params[:brand_id])
     @deal = Deal.find(params[:id])
  end

  
  # PUT /deals/1
  # PUT /deals/1.xml
  def update
    
    @deal = Deal.find(params[:id])

    respond_to do |format|
      if @deal.update_attributes(params[:deal])
        format.html { redirect_to(brand_deals_url, :notice => 'Deal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @deal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /deals/1
  # DELETE /deals/1.xml
  def destroy
    
    @deal = Deal.find(params[:id])
    @deal.destroy

    respond_to do |format|
      format.html { redirect_to(brand_deals_url) }
      format.xml  { head :ok }
    end
  end
  
end  