module Api
  module V1
    class SimpleQuestionsController < ApiController
      before_action :set_simple_question, only: [:show, :edit, :update, :destroy]

      # GET /simple_simple_questions
      # GET /simple_questions.json
      def index
        @simple_questions = SimpleQuestion.all
        render status: :ok, json: @simple_questions
      end

      # GET /simple_questions/1
      # GET /simple_questions/1.json
      def show
        render status: :ok, json: @simple_question
      end

      # GET /simple_questions/new
      def new
        @simple_question = SimpleQuestion.new
        render status: :ok, json: @simple_question
      end

      # GET /simple_questions/1/edit
      def edit
        render status: :ok, json: @simple_question
      end

      def create
        @simple_question = SimpleQuestion.new(simple_question_params)

        if @simple_question.save
          render status: :created, json: @simple_question
        else
          self.send(:new)
        end
      end


      # PATCH/PUT /simple_questions/1
      # PATCH/PUT /simple_questions/1.json
      def update
        if @simple_question.update(simple_question_params)
          render status: :ok, json: @simple_question
        else
          self.send(:edit)
        end
      end

      # DELETE /simple_questions/1
      # DELETE /simple_questions/1.json
      def destroy
        @simple_question.destroy
        head :no_content
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_simple_question
          @simple_question = SimpleQuestion.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def simple_question_params
          params.require(:simple_question).permit(:name, :media)
        end
    end
  end
end