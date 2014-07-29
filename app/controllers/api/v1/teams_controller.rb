module Api
  module V1
    class TeamsController < ApiController
      before_action :set_team, only: [:show, :edit, :update, :destroy]

      # GET /teams
      # GET /teams.json
      def index
        @teams = Team.all
        render status: :ok, json: @teams
      end

      # GET /teams/1
      # GET /teams/1.json
      def show
        render status: :ok, json: @team
      end

      # GET /teams/new
      def new
        @team = Team.new
        render status: :ok, json: @team
      end

      # GET /teams/1/edit
      def edit
        render status: :ok, json: @team
      end

      def create
        @team = Team.new(team_params)

        if @team.save
          render status: :created, json: @team
        else
          self.send(:new)
        end
      end


      # PATCH/PUT /teams/1
      # PATCH/PUT /teams/1.json
      def update
        if @team.update(team_params)
          render status: :ok, json: @team
        else
          self.send(:edit)
        end
      end

      # DELETE /teams/1
      # DELETE /teams/1.json
      def destroy
        @team.destroy
        head :no_content
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_team
          @team = Team.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def team_params
          params.require(:team).permit(:name)
        end
    end
  end
end