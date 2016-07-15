require 'rails_helper'
describe ProductsController do
  login_user
  let(:product){ create(:product)}
  describe 'GET #new' do
    it "assigns a new product to @product"do
      get :new
      expect(assigns(:product)).to be_a_new(Product)
    end
    it "renders the :new template" do
      get :new
      expect(assigns(:product)).to render_template :new
    end
  end

  describe 'POST #create' do
      context 'with valid attribtues' do
        it 'saves the new product in the database' do
          expect {
            post :create, user_id: '1', product: attributes_for(:product)
          }.to change(Product, :count).by(1)
        end

        it 'redirects to root_path' do
          expect(response).to redirect_to root_path
        end
      end
    end

  describe 'GET #show' do
     it "assigns the requested product to @product" do
       get :show, id: product
       expect(assigns(:product)).to eq product
     end
     let(:comment){ create(:comment) }
      it "assigns the requested comment to @comment" do
        get :show, id: product
        expect(assigns(:comment)).to be_a_new(Comment)
      end
     it "renders the :show template" do
       get :show, id: product
       expect(response).to render_template :show
     end
   end

   describe 'GET #edit' do
     it "assigns the requested product to @product" do
       get :edit, id: product
       expect(assigns(:product)).to eq product
     end
     it "renders the :edit template"do
       get :edit, id: product
       expect(response).to render_template :edit
     end
   end

  describe 'PATCH #update' do
      context 'with valid attributes' do
        before do
          patch :update, id: product.id,
          product: attributes_for(:product, title: 'tech')
        end
        it 'assigns the requested product to @product' do
          expect(assigns(:product)).to eq product
        end

        it 'updates attributes of product' do
          product.reload
          expect(product.title).to eq 'tech'
        end

        it 'redirects to product_path'  do
          expect(response).to redirect_to product_path(product)
        end
        end

      context 'with invalid attributes' do
        before do
          patch :update, id: product.id,
          product: attributes_for(:product, title: nil)
        end

        it 'assigns the requested product to @product' do
          expect(assigns(:product)).to eq product
        end

        it 'does not save the new product' do
          product.reload
          expect(product.title).not_to eq 'tech'
        end

        it 'renders the :show template' do
          expect(response).to render_template :edit
        end
      end
      end
  describe 'DELETE #destroy' do
      it 'assigns the requested product to @product' do
        delete :destroy, id: product
        expect(assigns(:product)).to eq product
      end

     it 'deletes the product' do
      delete :destroy, id: product
      expect{product.destroy}.to change{ Product.count }.by(-1)
     end

     it 'redirects to root_path' do
       delete :destroy, id: product
       expect(response).to redirect_to root_path
     end
    end
end
