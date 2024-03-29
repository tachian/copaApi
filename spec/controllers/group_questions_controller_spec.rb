require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe GroupQuestionsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # GroupQuestion. As you add validations to GroupQuestion, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GroupQuestionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all group_questions as @group_questions" do
      group_question = GroupQuestion.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:group_questions)).to eq([group_question])
    end
  end

  describe "GET show" do
    it "assigns the requested group_question as @group_question" do
      group_question = GroupQuestion.create! valid_attributes
      get :show, {:id => group_question.to_param}, valid_session
      expect(assigns(:group_question)).to eq(group_question)
    end
  end

  describe "GET new" do
    it "assigns a new group_question as @group_question" do
      get :new, {}, valid_session
      expect(assigns(:group_question)).to be_a_new(GroupQuestion)
    end
  end

  describe "GET edit" do
    it "assigns the requested group_question as @group_question" do
      group_question = GroupQuestion.create! valid_attributes
      get :edit, {:id => group_question.to_param}, valid_session
      expect(assigns(:group_question)).to eq(group_question)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new GroupQuestion" do
        expect {
          post :create, {:group_question => valid_attributes}, valid_session
        }.to change(GroupQuestion, :count).by(1)
      end

      it "assigns a newly created group_question as @group_question" do
        post :create, {:group_question => valid_attributes}, valid_session
        expect(assigns(:group_question)).to be_a(GroupQuestion)
        expect(assigns(:group_question)).to be_persisted
      end

      it "redirects to the created group_question" do
        post :create, {:group_question => valid_attributes}, valid_session
        expect(response).to redirect_to(GroupQuestion.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved group_question as @group_question" do
        post :create, {:group_question => invalid_attributes}, valid_session
        expect(assigns(:group_question)).to be_a_new(GroupQuestion)
      end

      it "re-renders the 'new' template" do
        post :create, {:group_question => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested group_question" do
        group_question = GroupQuestion.create! valid_attributes
        put :update, {:id => group_question.to_param, :group_question => new_attributes}, valid_session
        group_question.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested group_question as @group_question" do
        group_question = GroupQuestion.create! valid_attributes
        put :update, {:id => group_question.to_param, :group_question => valid_attributes}, valid_session
        expect(assigns(:group_question)).to eq(group_question)
      end

      it "redirects to the group_question" do
        group_question = GroupQuestion.create! valid_attributes
        put :update, {:id => group_question.to_param, :group_question => valid_attributes}, valid_session
        expect(response).to redirect_to(group_question)
      end
    end

    describe "with invalid params" do
      it "assigns the group_question as @group_question" do
        group_question = GroupQuestion.create! valid_attributes
        put :update, {:id => group_question.to_param, :group_question => invalid_attributes}, valid_session
        expect(assigns(:group_question)).to eq(group_question)
      end

      it "re-renders the 'edit' template" do
        group_question = GroupQuestion.create! valid_attributes
        put :update, {:id => group_question.to_param, :group_question => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested group_question" do
      group_question = GroupQuestion.create! valid_attributes
      expect {
        delete :destroy, {:id => group_question.to_param}, valid_session
      }.to change(GroupQuestion, :count).by(-1)
    end

    it "redirects to the group_questions list" do
      group_question = GroupQuestion.create! valid_attributes
      delete :destroy, {:id => group_question.to_param}, valid_session
      expect(response).to redirect_to(group_questions_url)
    end
  end

end
