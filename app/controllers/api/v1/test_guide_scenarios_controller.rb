module Api
  module V1
    class TestGuideScenariosController < ApiController
      before_action :set_test_guide_scenario, only: [:show, :edit, :update, :destroy]
      before_action :locate_collection, :only => :index

      # GET /test_guide_scenarios
      # GET /test_guide_scenarios.json
      def index
        render status: :ok, json: @test_guide_scenarios
      end

      # GET /test_guide_scenarios/1
      # GET /test_guide_scenarios/1.json
      def show
        render status: :ok, json: @test_guide_scenario
      end

      # GET /test_guide_scenarios/new
      def new
        @test_guide_scenario = TestGuideScenario.new
        render status: :ok, json: @test_guide_scenario
      end

      # GET /test_guide_scenarios/1/edit
      def edit
        render status: :ok, json: @test_guide_scenario
      end

      def create
        @test_guide_scenario = TestGuideScenario.new(test_guide_scenario_params)

        if @test_guide_scenario.save
          render status: :created, json: @test_guide_scenario
        else
          self.send(:new)
        end
      end


      # PATCH/PUT /test_guide_scenarios/1
      # PATCH/PUT /test_guide_scenarios/1.json
      def update
        if @test_guide_scenario.update(test_guide_scenario_params)
          render status: :ok, json: @test_guide_scenario
        else
          self.send(:edit)
        end
      end

      # DELETE /test_guide_scenarios/1
      # DELETE /test_guide_scenarios/1.json
      def destroy
        @test_guide_scenario.destroy
        head :no_content
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_test_guide_scenario
          @test_guide_scenario = TestGuideScenario.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def test_guide_scenario_params
          params.require(:test_guide_scenario).permit(:test_guide_analisys_id, :name, :media, :order)
        end

        def locate_collection
          if (params.has_key?("test_guide_analysis_id"))
            @test_guide_scenarios = TestGuideAnalysis.find(params[:test_guide_analysis_id]).test_guide_scenarios.order(:order)
          else
            @test_guide_scenarios = TestGuideScenario.order(:order)
          end
        end
    end
  end
end