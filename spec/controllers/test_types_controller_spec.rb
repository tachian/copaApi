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

RSpec.describe TestTypesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # TestType. As you add validations to TestType, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TestTypesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all test_types as @test_types" do
      test_type = TestType.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:test_types)).to eq([test_type])
    end
  end

  describe "GET show" do
    it "assigns the requested test_type as @test_type" do
      test_type = TestType.create! valid_attributes
      get :show, {:id => test_type.to_param}, valid_session
      expect(assigns(:test_type)).to eq(test_type)
    end
  end

  describe "GET new" do
    it "assigns a new test_type as @test_type" do
      get :new, {}, valid_session
      expect(assigns(:test_type)).to be_a_new(TestType)
    end
  end

  describe "GET edit" do
    it "assigns the requested test_type as @test_type" do
      test_type = TestType.create! valid_attributes
      get :edit, {:id => test_type.to_param}, valid_session
      expect(assigns(:test_type)).to eq(test_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TestType" do
        expect {
          post :create, {:test_type => valid_attributes}, valid_session
        }.to change(TestType, :count).by(1)
      end

      it "assigns a newly created test_type as @test_type" do
        post :create, {:test_type => valid_attributes}, valid_session
        expect(assigns(:test_type)).to be_a(TestType)
        expect(assigns(:test_type)).to be_persisted
      end

      it "redirects to the created test_type" do
        post :create, {:test_type => valid_attributes}, valid_session
        expect(response).to redirect_to(TestType.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved test_type as @test_type" do
        post :create, {:test_type => invalid_attributes}, valid_session
        expect(assigns(:test_type)).to be_a_new(TestType)
      end

      it "re-renders the 'new' template" do
        post :create, {:test_type => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested test_type" do
        test_type = TestType.create! valid_attributes
        put :update, {:id => test_type.to_param, :test_type => new_attributes}, valid_session
        test_type.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested test_type as @test_type" do
        test_type = TestType.create! valid_attributes
        put :update, {:id => test_type.to_param, :test_type => valid_attributes}, valid_session
        expect(assigns(:test_type)).to eq(test_type)
      end

      it "redirects to the test_type" do
        test_type = TestType.create! valid_attributes
        put :update, {:id => test_type.to_param, :test_type => valid_attributes}, valid_session
        expect(response).to redirect_to(test_type)
      end
    end

    describe "with invalid params" do
      it "assigns the test_type as @test_type" do
        test_type = TestType.create! valid_attributes
        put :update, {:id => test_type.to_param, :test_type => invalid_attributes}, valid_session
        expect(assigns(:test_type)).to eq(test_type)
      end

      it "re-renders the 'edit' template" do
        test_type = TestType.create! valid_attributes
        put :update, {:id => test_type.to_param, :test_type => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested test_type" do
      test_type = TestType.create! valid_attributes
      expect {
        delete :destroy, {:id => test_type.to_param}, valid_session
      }.to change(TestType, :count).by(-1)
    end

    it "redirects to the test_types list" do
      test_type = TestType.create! valid_attributes
      delete :destroy, {:id => test_type.to_param}, valid_session
      expect(response).to redirect_to(test_types_url)
    end
  end

end
