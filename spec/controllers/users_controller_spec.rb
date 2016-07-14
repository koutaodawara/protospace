require 'rails_helper'

describe UsersController do
  let(:user) { create(:user) }

  context 'with user login' do
    login_user

    describe 'GET #show' do
      it 'assigns the requested to @user' do
        get :show, id: user
        expect(assigns(:user)).to eq user
      end

      it 'renders the :show templates' do
        get :show, id: user
        expect(response).to render_template :show
      end
    end

    describe 'GET #edit' do
      it 'assigns the requested user to @user' do
        get :edit, id: user
        expect(assigns(:user)).to eq user
      end

      it 'renders the :edit template' do
        get :edit, id: user
        expect(response).to render_template :edit
      end
    end

    describe 'PATCH #update' do
      it "changes user's attribtues" do
        user = create(:user, nickname: "kouta")
        patch :update, id: user, user: attributes_for(:user)
        user.reload
        expect(user.nickname).to eq 'kouta'
      end

      it 'redirects root path' do
        patch :update, id: user, user: attributes_for(:user)
        expect(response).to redirect_to user_path
      end
    end
  end
end
