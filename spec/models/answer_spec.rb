require 'rails_helper'

RSpec.describe Answer, type: :model do
  describe 'クエスチョン新規登録' do
    before do
      @answer = FactoryBot.build(:answer)
    end
    
    context '新規登録がうまくいくとき' do 
      it '全ての項目（content)が存在すれば、登録出来る' do
        expect(@answer).to be_valid
      end
    end

    context '新規登録がうまくいなかないとき' do
      it 'contentが空だと登録できない' do
        @answer.content = nil
        @answer.valid?
        expect(@answer.errors.full_messages).to include "Content can't be blank"
      end

      it 'Userが紐付いていないと保存できない' do
        @answer.user = nil
        @answer.valid?
        expect(@answer.errors.full_messages).to include "User must exist"
      end

      it 'Questionが紐付いていないと保存できない' do
        @answer.question = nil
        @answer.valid?
        expect(@answer.errors.full_messages).to include "Question must exist"
      end
    end
  end
end