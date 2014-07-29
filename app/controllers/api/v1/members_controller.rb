module Api
  module V1
    class MembersController < ApiController
      before_action :set_member, only: [:show, :edit, :update, :destroy]
      before_action :locate_collection, :only => :index

      # GET /members
      # GET /members.json
      def index
        render status: :ok, json: @members
      end

      # GET /members/1
      # GET /members/1.json
      def show
        render status: :ok, json: @member
      end

      # GET /members/new
      def new
        @member = Member.new
        render status: :ok, json: @member
      end

      # GET /members/1/edit
      def edit
        render status: :ok, json: @member
      end

      def create
        @member = Member.new(member_params)

        if @member.save
          render status: :created, json: @member
        else
          self.send(:new)
        end
      end


      # PATCH/PUT /members/1
      # PATCH/PUT /members/1.json
      def update
        if @member.update(member_params)
          render status: :ok, json: @member
        else
          self.send(:edit)
        end
      end

      # DELETE /members/1
      # DELETE /members/1.json
      def destroy
        @member.destroy
        head :no_content
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_member
          @member = Member.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def member_params
          params.require(:member).permit(:name, :team_id)
        end

        def locate_collection
          if (params.has_key?("team_id"))
            @members = Team.find(params[:team_id]).members
          else
            @members = Member.all
          end
        end
    end
  end
end