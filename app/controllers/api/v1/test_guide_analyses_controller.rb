module Api
  module V1
    class TestGuideAnalysesController < ApiController
      before_action :set_test_guide_analysis, only: [:show, :edit, :update, :destroy]
      before_action :locate_collection, :only => :index

      # GET /test_guide_analyses
      # GET /test_guide_analyses.json
      def index
        render status: :ok, json: @test_guide_analyses
      end

      # GET /test_guide_analyses/1
      # GET /test_guide_analyses/1.json
      def show
        render status: :ok, json: @test_guide_analysis
      end

      # GET /test_guide_analyses/new
      def new
        @test_guide_analysis = TestGuideAnalysis.new
        render status: :ok, json: @test_guide_analysis
      end

      # GET /test_guide_analyses/1/edit
      def edit
        render status: :ok, json: @test_guide_analysis
      end

      def create
        @test_guide_analysis = TestGuideAnalysis.new(test_guide_analysis_params)

        if @test_guide_analysis.save
          render status: :created, json: @test_guide_analysis
        else
          self.send(:new)
        end
      end


      # PATCH/PUT /test_guide_analyses/1
      # PATCH/PUT /test_guide_analyses/1.json
      def update
        if @test_guide_analysis.update(test_guide_analysis_params)
          render status: :ok, json: @test_guide_analysis
        else
          self.send(:edit)
        end
      end

      # DELETE /test_guide_analyses/1
      # DELETE /test_guide_analyses/1.json
      def destroy
        @test_guide_analysis.destroy
        head :no_content
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_test_guide_analysis
          @test_guide_analysis = TestGuideAnalysis.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def test_guide_analysis_params
          params.require(:test_guide_analysis).permit(:test_id, :order, :name, :statement, :media)
        end

        def locate_collection
          if (params.has_key?("test_id"))
            @test_guide_analyses = Test.find(params[:test_id]).test_guide_analyses.order(:order)
          else
            @test_guide_analyses = TestGuideAnalysis.order(:order)
          end
        end
    end
  end
end