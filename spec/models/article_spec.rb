require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '記事新規登録' do
    before do
      @article = FactoryBot.build(:article)
      @article.image = fixture_file_upload('public/images/test_image.png')
    end

    context '新規登録がうまくいくとき' do
      it '全ての項目（title, country_id, category_id, content）が存在すれば、登録出来る' do
        expect(@article).to be_valid
      end
    end

    context '新規登録がうまくいなかないとき' do
      it "country_idが'--'だと登録出来ない" do
        @article.country_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include 'Country must be other than 1'
      end

      it 'titleが空だと登録できない' do
        @article.title = nil
        @article.valid?
        expect(@article.errors.full_messages).to include "Title can't be blank"
      end

      it "category_idが'--'だと登録出来ない" do
        @article.category_id = 1
        @article.valid?
        expect(@article.errors.full_messages).to include 'Category must be other than 1'
      end

      it 'contentが空だと登録できない' do
        @article.content = nil
        @article.valid?
        expect(@article.errors.full_messages).to include "Content can't be blank"
      end

      it 'imageが空だと登録できない' do
        @article.image = nil
        @article.valid?
        expect(@article.errors.full_messages).to include "Image can't be blank"
      end

      it 'Userが紐付いていないと保存できない' do
        @article.user = nil
        @article.valid?
        expect(@article.errors.full_messages).to include 'User must exist'
      end
    end
  end
end
