module Api
  module V1
    class SimpleQuestionAlternativesController < ApiController
      before_action :set_simple_question_alternative, only: [:show, :edit, :update, :destroy]
      before_action :locate_collection, :only => :index

      # GET /simple_question_alternatives
      # GET /simple_question_alternatives.json
      def index
        render status: :ok, json: @simple_question_alternatives
      end

      # GET /simple_question_alternatives/1
      # GET /simple_question_alternatives/1.json
      def show
        render status: :ok, json: @simple_question_alternative
      end

      # GET /simple_question_alternatives/new
      def new
        @simple_question_alternative = SimpleQuestionAlternative.new
        render status: :ok, json: @simple_question_alternative
      end

      # GET /simple_question_alternatives/1/edit
      def edit
        render status: :ok, json: @simple_question_alternative
      end

      def create
        @simple_question_alternative = SimpleQuestionAlternative.new(simple_question_alternative_params)

        if @simple_question_alternative.save
          render status: :created, json: @simple_question_alternative
        else
          self.send(:new)
        end
      end


      # PATCH/PUT /simple_question_alternatives/1
      # PATCH/PUT /simple_question_alternatives/1.json
      def update
        if @simple_question_alternative.update(simple_question_alternative_params)
          render status: :ok, json: @simple_question_alternative
        else
          self.send(:edit)
        end
      end

      # DELETE /simple_question_alternatives/1
      # DELETE /simple_question_alternatives/1.json
      def destroy
        @simple_question_alternative.destroy
        head :no_content
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_simple_question_alternative
          @simple_question_alternative = SimpleQuestionAlternative.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def simple_question_alternative_params
          params.require(:simple_question_alternative).permit(:name, :media, :correct, :question_id)
        end

        def locate_collection
          if (params.has_key?("simple_question_id"))
            @simple_question_alternatives = SimpleQuestion.find(params[:simple_question_id]).simple_question_alternatives
          else
            @simple_question_alternatives = SimpleQuestionAlternative.all
          end
        end
    end
  end
end
