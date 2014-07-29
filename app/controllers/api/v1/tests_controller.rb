module Api
  module V1
    class TestsController < ApiController
      before_action :set_test, only: [:show, :edit, :update, :destroy]
      before_action :locate_collection, :only => :index

      # GET /tests
      # GET /tests.json
      def index
        render status: :ok, json: @tests
      end

      # GET /tests/1
      # GET /tests/1.json
      def show
        render status: :ok, json: @test
      end

      # GET /tests/new
      def new
        @test = Test.new
        render status: :ok, json: @test
      end

      # GET /tests/1/edit
      def edit
        render status: :ok, json: @test
      end

      def create
        @test = Test.new(test_params)

        if @test.save
          render status: :created, json: @test
        else
          self.send(:new)
        end
      end


      # PATCH/PUT /tests/1
      # PATCH/PUT /tests/1.json
      def update
        if @test.update(test_params)
          render status: :ok, json: @test
        else
          self.send(:edit)
        end
      end

      # DELETE /tests/1
      # DELETE /tests/1.json
      def destroy
        @test.destroy
        head :no_content
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_test
          @test = Test.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def test_params
          params.require(:test).permit(:name)
        end

        def locate_collection
          if (params.has_key?("company_id"))
            @tests = Company.find(params[:company_id]).tests
          else
            @tests = Test.all
          end
        end
    end
  end
end