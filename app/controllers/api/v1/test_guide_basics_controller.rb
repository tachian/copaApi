module Api
  module V1
    class TestGuideBasicsController < ApiController
      before_action :set_test_guide_basic, only: [:show, :edit, :update, :destroy]
      before_action :locate_collection, :only => :index

      # GET /test_guide_basics
      # GET /test_guide_basics.json
      def index
        render status: :ok, json: @test_guide_basics
      end

      # GET /test_guide_basics/1
      # GET /test_guide_basics/1.json
      def show
        render status: :ok, json: @test_guide_basic
      end

      # GET /test_guide_basics/new
      def new
        @test_guide_basic = TestGuideBasic.new
        render status: :ok, json: @test_guide_basic
      end

      # GET /test_guide_basics/1/edit
      def edit
        render status: :ok, json: @test_guide_basic
      end

      def create
        @test_guide_basic = TestGuideBasic.new(test_guide_basic_params)

        if @test_guide_basic.save
          render status: :created, json: @test_guide_basic
        else
          self.send(:new)
        end
      end


      # PATCH/PUT /test_guide_basics/1
      # PATCH/PUT /test_guide_basics/1.json
      def update
        if @test_guide_basic.update(test_guide_basic_params)
          render status: :ok, json: @test_guide_basic
        else
          self.send(:edit)
        end
      end

      # DELETE /test_guide_basics/1
      # DELETE /test_guide_basics/1.json
      def destroy
        @test_guide_basic.destroy
        head :no_content
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_test_guide_basic
          @test_guide_basic = TestGuideBasic.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def test_guide_basic_params
          params.require(:test_guide_basic).permit(:test_id, :test_type_id, :order, :name, :message, :simple_question_id, :group_question_id)
        end

        def locate_collection
          if (params.has_key?("test_id"))
            @test_guide_basics = Test.find(params[:test_id]).test_guide_basics.order(:order)
          else
            @test_guide_basics = TestGuideBasic.order(:order)
          end
        end
    end
  end
end