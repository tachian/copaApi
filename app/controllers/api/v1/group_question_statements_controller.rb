module Api
  module V1
    class GroupQuestionStatementsController < ApiController
      before_action :set_group_question_statetment, only: [:show, :edit, :update, :destroy]
      before_action :locate_collection, :only => :index

      # GET /group_question_statetments
      # GET /group_question_statetments.json
      def index
        render status: :ok, json: @group_question_statetments
      end

      # GET /group_question_statetments/1
      # GET /group_question_statetments/1.json
      def show
        render status: :ok, json: @group_question_statetment
      end

      # GET /group_question_statetments/new
      def new
        @group_question_statetment = GroupQuestionStatement.new
        render status: :ok, json: @group_question_statetment
      end

      # GET /group_question_statetments/1/edit
      def edit
        render status: :ok, json: @group_question_statetment
      end

      def create
        @group_question_statetment = GroupQuestionStatement.new(group_question_statetment_params)

        if @group_question_statetment.save
          render status: :created, json: @group_question_statetment
        else
          self.send(:new)
        end
      end


      # PATCH/PUT /group_question_statetments/1
      # PATCH/PUT /group_question_statetments/1.json
      def update
        if @group_question_statetment.update(group_question_statetment_params)
          render status: :ok, json: @group_question_statetment
        else
          self.send(:edit)
        end
      end

      # DELETE /group_question_statetments/1
      # DELETE /group_question_statetments/1.json
      def destroy
        @group_question_statetment.destroy
        head :no_content
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_group_question_statetment
          @group_question_statetment = GroupQuestionStatement.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def group_question_statetment_params
          params.require(:group_question_statetment).permit(:name, :media, :correct, :question_id)
        end

        def locate_collection
          if (params.has_key?("group_question_id"))
            @group_question_statetments = GroupQuestion.find(params[:group_question_id]).group_question_statements
          else
            @group_question_statetments = GroupQuestionStatement.all
          end
        end
    end
  end
end
