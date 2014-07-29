module Api
  module V1
    class TestGuideScenarioSasController < ApiController
      before_action :set_test_guide_scenario_sa, only: [:show, :edit, :update, :destroy]
      before_action :locate_collection, :only => :index

      # GET /test_guide_scenario_sas
      # GET /test_guide_scenario_sas.json
      def index
        render status: :ok, json: @test_guide_scenario_sas
      end

      # GET /test_guide_scenario_sas/1
      # GET /test_guide_scenario_sas/1.json
      def show
        render status: :ok, json: @test_guide_scenario_sa
      end

      # GET /test_guide_scenario_sas/new
      def new
        @test_guide_scenario_sa = TestGuideScenarioSa.new
        render status: :ok, json: @test_guide_scenario_sa
      end

      # GET /test_guide_scenario_sas/1/edit
      def edit
        render status: :ok, json: @test_guide_scenario_sa
      end

      def create
        @test_guide_scenario_sa = TestGuideScenarioSa.new(test_guide_scenario_sa_params)

        if @test_guide_scenario_sa.save
          render status: :created, json: @test_guide_scenario_sa
        else
          self.send(:new)
        end
      end


      # PATCH/PUT /test_guide_scenario_sas/1
      # PATCH/PUT /test_guide_scenario_sas/1.json
      def update
        if @test_guide_scenario_sa.update(test_guide_scenario_sa_params)
          render status: :ok, json: @test_guide_scenario_sa
        else
          self.send(:edit)
        end
      end

      # DELETE /test_guide_scenario_sas/1
      # DELETE /test_guide_scenario_sas/1.json
      def destroy
        @test_guide_scenario_sa.destroy
        head :no_content
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_test_guide_scenario_sa
          @test_guide_scenario_sa = TestGuideScenarioSa.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def test_guide_scenario_sa_params
          params.require(:test_guide_scenario_sa).permit(:test_guide_scenario_id, :statement, :simple_question_id, :group_question_id)
        end

        def locate_collection
          if (params.has_key?("test_guide_scenario_id"))
            @test_guide_scenario_sas = TestGuideScenario.find(params[:test_guide_scenario_id]).test_guide_scenario_sa
          else
            @test_guide_scenario_sas = TestGuideScenarioSa.all
          end
        end
    end
  end
end