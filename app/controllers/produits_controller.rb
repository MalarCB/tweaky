class ProduitsController < ApplicationController
  layout 'admin_layout', except: [:display, :detail]
  before_action :set_produit, only: [:show, :edit, :update, :destroy]
  before_filter :restrict_admin_tool_access_by_ipaddress, except: [:display, :detail]
  before_action :additional_params, only: [:create]

  def display
    @produits = Produit.order('created_at DESC').all
  end

  def detail
    begin
      @produit = Produit.find_by!(id: params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to vitrine_path
    end
  end

  def index
    @produits = Produit.all
  end

  def show
  end

  def new
    @produit = Produit.new
  end

  def edit
  end

  def create
    @produit = Produit.new(produit_params)

    respond_to do |format|
      if @produit.save
        format.html { redirect_to @produit, notice: 'Produit was successfully created.' }
        format.json { render :show, status: :created, location: @produit }
      else
        format.html { render :new }
        format.json { render json: @produit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produits/1
  # PATCH/PUT /produits/1.json
  def update
    respond_to do |format|
      if @produit.update(produit_params)
        format.html { redirect_to @produit, notice: 'Produit was successfully updated.' }
        format.json { render :show, status: :ok, location: @produit }
      else
        format.html { render :edit }
        format.json { render json: @produit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produits/1
  # DELETE /produits/1.json
  def destroy
    @produit.destroy
    respond_to do |format|
      format.html { redirect_to produits_url, notice: 'Produit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def download
    send_file 'avatar.jpg', :type => 'image/jpeg', :disposition => 'attachment'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_produit
    @produit = Produit.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def produit_params
    params.require(:produit).permit(:name, :imagename, :url, :prixvente, :prixnet, :devise, :commission, :stock, :likes, :downloads, :tags, :status,
                                    :vues, :admin_ip, :product_desc)
  end

  def additional_params
    params[:produit][:admin_ip] = request.remote_ip
  end
end
