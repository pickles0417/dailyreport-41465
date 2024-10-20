require 'rails_helper'
RSpec.describe Customer, type: :model do
  before do
    @customer = FactoryBot.build(:customer)
    sleep 0.1
  end

  describe '顧客の新規登録' do
    context '顧客登録ができるとき' do
      it '全ての入力事項が、存在すれば登録できる' do
        expect(@customer).to be_valid
      end
      it 'カテゴリーが「---」以外であれば登録できる' do
        @customer.category_id = 1
        expect(@customer).to be_valid
      end
      it '契約状況が「---」以外であれば登録できる' do
        @customer.contract_id = 1
        expect(@customer).to be_valid
      end
      it '郵便番号が3桁の数字と4桁の数字の間にハイフンがある文字列であれば登録できる' do
        @customer.postcode = '111-1111'
        expect(@customer).to be_valid
      end
      it '都道府県が「---」以外であれば登録できる' do
        @customer.prefecture_id = 1
        expect(@customer).to be_valid
      end
      it '電話番号が10桁以上11桁以内の半角数字であれば登録できる' do
        @customer.phone_number = '0123456789'
        expect(@customer).to be_valid
      end
    end

    context '顧客登録ができないとき' do
      it 'userが紐づいていないと保存できない' do
        @customer.user = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include('Userを入力してください')
      end
      it '顧客名が空欄だと登録できない' do
        @customer.customer_name = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include('施設名を入力してください')
      end
      it '種類の情報が「---」だと登録できない' do
        @customer.category_id = 0
        @customer.valid?
        expect(@customer.errors.full_messages).to include('種類を選択してください')
      end
      it '顧客区分が「---」だと登録できない' do
        @customer.contract_id = 0
        @customer.valid?
        expect(@customer.errors.full_messages).to include('顧客区分を選択してください')
      end
      it '入居定員が空欄だと登録できない' do
        @customer.capacity = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include('入居定員を入力してください', '入居定員は数値で入力してください')
      end
      it '入居定員が数字以外だと登録できない' do
        @customer.capacity = 'aaa'
        @customer.valid?
        expect(@customer.errors.full_messages).to include('入居定員は数値で入力してください')
      end
      it '郵便番号が空欄だと登録できない' do
        @customer.postcode = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include('郵便番号を入力してください', '郵便番号はハイフンを含めた半角文字列で入力してください (例：123-4567)')
      end
      it '郵便番号にハイフンがないと登録できない' do
        @customer.postcode = '1111111'
        @customer.valid?
        expect(@customer.errors.full_messages).to include('郵便番号はハイフンを含めた半角文字列で入力してください (例：123-4567)')
      end
      it '都道府県が空欄だと登録できない' do
        @customer.prefecture_id = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include('都道府県を選択してください')
      end
      it '市区町村が空欄だと登録できない' do
        @customer.city = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include('市区町村を入力してください')
      end
      it '番地が空欄だと登録できない' do
        @customer.block = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include('番地を入力してください')
      end
      it '電話番号が空欄だと登録できない' do
        @customer.phone_number = nil
        @customer.valid?
        expect(@customer.errors.full_messages).to include('施設電話番号を入力してください', '施設電話番号は10桁以上11桁以内の半角数字で入力してください')
      end
      it '電話番号が半角数字以外だと登録できない' do
        @customer.phone_number = 'aaaaaaaaaa'
        @customer.valid?
        expect(@customer.errors.full_messages).to include('施設電話番号は10桁以上11桁以内の半角数字で入力してください')
      end
      it '電話番号が9桁以下だと登録できない' do
        @customer.phone_number = '1'
        @customer.valid?
        expect(@customer.errors.full_messages).to include('施設電話番号は10桁以上11桁以内の半角数字で入力してください')
      end
      it '電話番号が１２桁以上だと登録できない' do
        @customer.phone_number = '111111111111'
        @customer.valid?
        expect(@customer.errors.full_messages).to include('施設電話番号は10桁以上11桁以内の半角数字で入力してください')
      end
      it '電話番号にハイフンがあると登録できない' do
        @customer.phone_number = '111-1111-1111'
        @customer.valid?
        expect(@customer.errors.full_messages).to include('施設電話番号は10桁以上11桁以内の半角数字で入力してください')
      end
    end
  end
end
