module Api
  module V1
    class GroupQuestionAlternativesController < ApiController
      before_action :set_group_question_alternative, only: [:show, :edit, :update, :destroy]
      before_action :locate_collection, :only => :index

      # GET /group_question_alternatives
      # GET /group_question_alternatives.json
      def index
        render status: :ok, json: @group_question_alternatives
      end

      # GET /group_question_alternatives/1
      # GET /group_question_alternatives/1.json
      def show
        render status: :ok, json: @group_question_alternative
      end

      # GET /group_question_alternatives/new
      def new
        @group_question_alternative = GroupQuestionAlternative.new
        render status: :ok, json: @group_question_alternative
      end

      # GET /group_question_alternatives/1/edit
      def edit
        render status: :ok, json: @group_question_alternative
      end

      def create
        @group_question_alternative = GroupQuestionAlternative.new(group_question_alternative_params)

        if @group_question_alternative.save
          render status: :created, json: @group_question_alternative
        else
          self.send(:new)
        end
      end


      # PATCH/PUT /group_question_alternatives/1
      # PATCH/PUT /group_question_alternatives/1.json
      def update
        if @group_question_alternative.update(group_question_alternative_params)
          render status: :ok, json: @group_question_alternative
        else
          self.send(:edit)
        end
      end

      # DELETE /group_question_alternatives/1
      # DELETE /group_question_alternatives/1.json
      def destroy
        @group_question_alternative.destroy
        head :no_content
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_group_question_alternative
          @group_question_alternative = GroupQuestionAlternative.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def group_question_alternative_params
          params.require(:group_question_alternative).permit(:name, :media, :correct, :question_id)
        end

        def locate_collection
          if (params.has_key?("group_question_statement_id"))
            @group_question_alternatives = GroupQuestionStatement.find(params[:group_question_statement_id]).group_question_alternatives
          else
            @group_question_alternatives = GroupQuestionAlternative.all
          end
        end
    end
  end
end
