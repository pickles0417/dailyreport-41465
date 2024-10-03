require 'rails_helper'

RSpec.describe Daily, type: :model do
  before do
    user = FactoryBot.create(:user)
    customer = FactoryBot.create(:customer)
    @daily = FactoryBot.build(:daily, user_id: user.id, customer_id: customer.id)
  end

  describe '商談情報の保存' do
    context '内容に問題ない場合' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@daily).to be_valid
      end
      it '商談年が2023年以降2031年以前であれば保存できる' do
        @daily.meet_year = "2024"
        expect(@daily).to be_valid
      end
      it '商談月が1月から12月であれば保存できる' do
        @daily.meet_month = "1"
        expect(@daily).to be_valid
      end
      it '商談日が1日から31日であれば保存できる' do
        @daily.meet_day = "1"
        expect(@daily).to be_valid
      end
      it '食事内容が「---」以外でなければ保存できる' do
        @daily.meal_id = 1
        expect(@daily).to be_valid
      end
      it '施設担当者が空欄でなければ保存できる' do
        @daily.manager_name = "山田"
        expect(@daily).to be_valid
      end
      it '施設担当者が空欄でなければ保存できる' do
        @daily.manager_name = "山田"
        expect(@daily).to be_valid
      end
      it '商談内容が空欄でなければ保存できる' do
        @daily.text = "テキスト"
        expect(@daily).to be_valid
      end
    end
    context '内容に問題がある場合' do
      it 'userが紐づいていないと保存できない' do
        @daily.user_id = nil
        @daily.valid?
        expect(@daily.errors.full_messages).to include('Userを入力してください')
      end
      it 'customerが紐づいていないと保存できない' do
        @daily.customer_id = nil
        @daily.valid?
        expect(@daily.errors.full_messages).to include('Customerを入力してください')
      end
      it '商談年が空欄だと保存できない' do
        @daily.meet_year = nil
        @daily.valid?
        expect(@daily.errors.full_messages).to include('年を入力してください', '年は数値で入力してください')
      end
      it '商談年が2024年以前だと保存できない' do
        @daily.meet_year = "2023"
        @daily.valid?
        expect(@daily.errors.full_messages).to include('年は2023より大きい値にしてください')
      end
      it '商談年が2030年以降だと保存できない' do
        @daily.meet_year = "2031"
        @daily.valid?
        expect(@daily.errors.full_messages).to include('年は2030以下の値にしてください')
      end
      it '商談月が空欄だと保存できない' do
        @daily.meet_month = nil
        @daily.valid?
        expect(@daily.errors.full_messages).to include('月を入力してください', '月は数値で入力してください')
      end
      it '商談月が12月以降だと保存できない' do
        @daily.meet_month = "13"
        @daily.valid?
        expect(@daily.errors.full_messages).to include('月は12以下の値にしてください')
      end
      it '商談月が1月以前だと保存できない' do
        @daily.meet_month = "0"
        @daily.valid?
        expect(@daily.errors.full_messages).to include('月は0より大きい値にしてください')
      end
      it '商談日が空欄だと保存できない' do
        @daily.meet_day = nil
        @daily.valid?
        expect(@daily.errors.full_messages).to include('日を入力してください', '日は数値で入力してください')
      end
      it '商談日が31日以降だと保存できない' do
        @daily.meet_day = "32"
        @daily.valid?
        expect(@daily.errors.full_messages).to include('日は31以下の値にしてください')
      end
      it '商談日が1日以前だと保存できない' do
        @daily.meet_day = "0"
        @daily.valid?
        expect(@daily.errors.full_messages).to include('日は0より大きい値にしてください')
      end
      it '食事内容が「---」だと保存できない' do
        @daily.meal_id = 0
        @daily.valid?
        expect(@daily.errors.full_messages).to include('食事内容を選択してください')
      end
      it '商談内容が空欄だと保存できない' do
        @daily.text = nil
        @daily.valid?
        expect(@daily.errors.full_messages).to include('商談内容を入力してください')
      end
    end
  end
end