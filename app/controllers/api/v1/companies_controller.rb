module Api
  module V1
    class CompaniesController < ApiController
      before_action :set_company, only: [:show, :edit, :update, :destroy]

      # GET /companies
      # GET /companies.json
      def index
        @companies = Company.all
        render status: :ok, json: @companies
      end

      # GET /companies/1
      # GET /companies/1.json
      def show
        render status: :ok, json: @company
      end

      # GET /companies/new
      def new
        @company = Company.new
        render status: :ok, json: @company
      end

      # GET /companies/1/edit
      def edit
        render status: :ok, json: @company
      end

      def create
        @company = Company.new(company_params)

        if @company.save
          render status: :created, json: @company
        else
          self.send(:new)
        end
      end


      # PATCH/PUT /companies/1
      # PATCH/PUT /companies/1.json
      def update
        if @company.update(company_params)
          render status: :ok, json: @company
        else
          self.send(:edit)
        end
      end

      # DELETE /companies/1
      # DELETE /companies/1.json
      def destroy
        @company.destroy
        head :no_content
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_company
          @company = Company.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def company_params
          params.require(:company).permit(:name, :media, :correct, :question_id)
        end
    end
  end
end
