module Api
  module V1
    class GroupQuestionsController < ApiController
      before_action :set_group_question, only: [:show, :edit, :update, :destroy]

      # GET /group_questions
      # GET /group_questions.json
      def index
        @group_questions = GroupQuestion.all
        render status: :ok, json: @group_questions
      end

      # GET /group_questions/1
      # GET /group_questions/1.json
      def show
        render status: :ok, json: @group_question
      end

      # GET /group_questions/new
      def new
        @group_question = GroupQuestion.new
        render status: :ok, json: @group_question
      end

      # GET /group_questions/1/edit
      def edit
        render status: :ok, json: @group_question
      end

      def create
        @group_question = GroupQuestion.new(group_question_params)

        if @group_question.save
          render status: :created, json: @group_question
        else
          self.send(:new)
        end
      end


      # PATCH/PUT /group_questions/1
      # PATCH/PUT /group_questions/1.json
      def update
        if @group_question.update(group_question_params)
          render status: :ok, json: @group_question
        else
          self.send(:edit)
        end
      end

      # DELETE /group_questions/1
      # DELETE /group_questions/1.json
      def destroy
        @group_question.destroy
        head :no_content
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_group_question
          @group_question = GroupQuestion.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def group_question_params
          params.require(:group_question).permit(:name, :media, :correct, :question_id)
        end
    end
  end
end
