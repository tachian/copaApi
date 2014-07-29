module Api
  module V1
    class TestTypesController < ApiController
      before_action :set_test_type, only: [:show, :edit, :update, :destroy]

      # GET /test_types
      # GET /test_types.json
      def index
        @test_types = TestType.all
        render status: :ok, json: @test_types
      end

      # GET /test_types/1
      # GET /test_types/1.json
      def show
        render status: :ok, json: @test_type
      end

      # GET /test_types/new
      def new
        @test_type = TestType.new
        render status: :ok, json: @test_type
      end

      # GET /test_types/1/edit
      def edit
        render status: :ok, json: @test_type
      end

      def create
        @test_type = TestType.new(test_type_params)

        if @test_type.save
          render status: :created, json: @test_type
        else
          self.send(:new)
        end
      end


      # PATCH/PUT /test_types/1
      # PATCH/PUT /test_types/1.json
      def update
        if @test_type.update(test_type_params)
          render status: :ok, json: @test_type
        else
          self.send(:edit)
        end
      end

      # DELETE /test_types/1
      # DELETE /test_types/1.json
      def destroy
        @test_type.destroy
        head :no_content
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_test_type
          @test_type = TestType.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def test_type_params
          params.require(:test_type).permit(:name)
        end
    end
  end
end