require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '新規登録' do
    before do
      @comment = FactoryBot.build(:comment)
    end

    context '新規登録がうまくいくとき' do
      it '全ての項目（user_id, article_id, content)が存在すれば、登録出来る' do
        expect(@comment).to be_valid
      end
    end

    context '新規登録がうまくいなかないとき' do
      it 'contentが空だと登録できない' do
        @comment.content = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include "Content can't be blank"
      end

      it 'Userが紐付いていないと保存できない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include 'User must exist'
      end

      it 'Questionが紐付いていないと保存できない' do
        @comment.article = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include 'Article must exist'
      end
    end
  end
end