class BrandsController < Spree::BaseController
  
   def index
     @brands = Brand.all

     respond_to do |format|
       format.html # index.html.erb
       format.xml  { render :xml => @deals }
     end
   end

   def show
     @brand = Brand.find(params[:id])
    
     respond_to do |format|
       format.html # show.html.erb
       format.xml  { render :xml => @deal }
     end
   end

   def new
     @brand = Brand.new
     
     respond_to do |format|
       format.html # new.html.erb
       format.xml  { render :xml => @deal }
     end
   end
  
   # GET /brands/1/edit
   def edit
     @brand = Brand.find(params[:id])
   end
  
   def create
     @brand = Brand.new(params[:brand])
    
     respond_to do |format|
       if @brand.save
         format.html { redirect_to(@brand, :notice => 'Brand deal was successfully created.') }
         format.xml  { render :xml => @brand, :status => :created, :location => @brand }
       else
         format.html { render :action => "new" }
         format.xml  { render :xml => @brand.errors, :status => :unprocessable_entity }
       end
     end
   end
  
  
   # PUT /snippets/1
   # PUT /snippets/1.xml
   def update
     @brand = Brand.find(params[:id])

     respond_to do |format|
       if @brand.update_attributes(params[:brand])
         format.html { redirect_to(@brand, :notice => 'Brand was successfully updated.') }
         format.xml  { head :ok }
       else
         format.html { render :action => "edit" }
         format.xml  { render :xml => @brand.errors, :status => :unprocessable_entity }
       end
     end
   end

   # DELETE /snippets/1
   # DELETE /snippets/1.xml
   def destroy
     
     # Delete brand and it's deals as well 
     Brand.destroy(params[:id])
     
     respond_to do |format|
       format.html { redirect_to(brands_url) }
       format.xml  { head :ok }
     end
   end
  
end