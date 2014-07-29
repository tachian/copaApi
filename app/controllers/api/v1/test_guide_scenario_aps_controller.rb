module Api
  module V1
    class TestGuideScenarioApsController < ApiController
      before_action :set_test_guide_scenario_ap, only: [:show, :edit, :update, :destroy]
      before_action :locate_collection, :only => :index

      # GET /test_guide_scenario_aps
      # GET /test_guide_scenario_aps.json
      def index
        render status: :ok, json: @test_guide_scenario_aps
      end

      # GET /test_guide_scenario_aps/1
      # GET /test_guide_scenario_aps/1.json
      def show
        render status: :ok, json: @test_guide_scenario_ap
      end

      # GET /test_guide_scenario_aps/new
      def new
        @test_guide_scenario_ap = TestGuideScenarioPa.new
        render status: :ok, json: @test_guide_scenario_ap
      end

      # GET /test_guide_scenario_aps/1/edit
      def edit
        render status: :ok, json: @test_guide_scenario_ap
      end

      def create
        @test_guide_scenario_ap = TestGuideScenarioPa.new(test_guide_scenario_ap_params)

        if @test_guide_scenario_ap.save
          render status: :created, json: @test_guide_scenario_ap
        else
          self.send(:new)
        end
      end


      # PATCH/PUT /test_guide_scenario_aps/1
      # PATCH/PUT /test_guide_scenario_aps/1.json
      def update
        if @test_guide_scenario_ap.update(test_guide_scenario_ap_params)
          render status: :ok, json: @test_guide_scenario_ap
        else
          self.send(:edit)
        end
      end

      # DELETE /test_guide_scenario_aps/1
      # DELETE /test_guide_scenario_aps/1.json
      def destroy
        @test_guide_scenario_ap.destroy
        head :no_content
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_test_guide_scenario_ap
          @test_guide_scenario_ap = TestGuideScenarioPa.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def test_guide_scenario_ap_params
          params.require(:test_guide_scenario_ap).permit(:test_guide_scenario_id, :statement, :simple_question_id, :group_question_id)
        end

        def locate_collection
          if (params.has_key?("test_guide_scenario_id"))
            @test_guide_scenario_aps = TestGuideScenario.find(params[:test_guide_scenario_id]).test_guide_scenario_ap
          else
            @test_guide_scenario_aps = TestGuideScenarioAp.all
          end
        end
    end
  end
end