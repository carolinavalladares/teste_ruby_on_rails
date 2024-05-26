class FornecedorsController < ApplicationController
  before_action :set_fornecedor, only: %i[ show edit update destroy ]

  # GET /fornecedors or /fornecedors.json
  def index
    @fornecedors = Fornecedor.all
  end

  # GET /fornecedors/1 or /fornecedors/1.json
  def show
  end

  # GET /fornecedors/new
  def new
    @fornecedor = Fornecedor.new
    @fornecedor.emails.build
    @fornecedor.telefones.build
  end

  # GET /fornecedors/1/edit
  def edit
    @fornecedor.emails.build if @fornecedor.emails.empty?
    @fornecedor.telefones.build if @fornecedor.telefones.empty?
  end

  # POST /fornecedors or /fornecedors.json
  def create
    @fornecedor = Fornecedor.new(fornecedor_params)

    respond_to do |format|
      if @fornecedor.save
        format.html { redirect_to fornecedor_url(@fornecedor), notice: "Fornecedor criado com sucesso." }
        format.json { render :show, status: :created, location: @fornecedor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fornecedors/1 or /fornecedors/1.json
  def update
    respond_to do |format|
      if @fornecedor.update(fornecedor_params)
        format.html { redirect_to fornecedor_url(@fornecedor), notice: "Fornecedor atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @fornecedor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fornecedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fornecedors/1 or /fornecedors/1.json
  def destroy
    @fornecedor.destroy!

    respond_to do |format|
      format.html { redirect_to fornecedors_url, notice: "Fornecedor excluído com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fornecedor
      @fornecedor = Fornecedor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fornecedor_params
      params.require(:fornecedor).permit(:nome, :descricao, :cidade, :endereco, :bairro, :numero, emails_attributes:[:id, :email, :referencia, :_destroy], telefones_attributes:[:id, :ddd, :numero ,:referencia, :_destroy])
    end
end
