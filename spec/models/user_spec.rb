require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    before do
      @user = FactoryBot.build(:user)
      @user.birthday = '1990-03-16'
      @user.image = fixture_file_upload('public/images/test_image.png')
    end
    context '新規登録がうまくいくとき' do
      it '全ての項目（full_name, email, password, password_confirmation, gender_id, country_id, city, birthday, language, image）が存在すれば、登録出来る' do
        expect(@user).to be_valid
      end

      it 'languageとimageがなくても登録出来る' do
        @user.language = nil
        @user.image = nil
        expect(@user).to be_valid
      end
    end

    context '新規登録がうまくいなかないとき' do
      it 'full_nameが空だと登録できない' do
        @user.full_name = nil
        @user.valid?
        expect(@user.errors.full_messages).to include "Full name can't be blank"
      end

      it 'emailが空だと登録できない' do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end

      it '既に登録されたメールアドレスが存在する場合、登録出来ない' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end

      it 'メールアドレスに@がないと場合、登録出来ない' do
        @user.email = 'testemail.com'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Email is invalid'
      end

      it 'passwordが空だと登録出来ない' do
        @user.password = nil
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank"
      end

      it 'passwordが5文字以下だと登録できない' do
        @user.password = '12345'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Password is too short (minimum is 6 characters)'
      end

      it 'password_confirmationが空だと登録出来ない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end

      it "gender_idが'--'だと登録出来ない" do
        @user.gender_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include 'Gender must be other than 1'
      end

      it "country_idが'--'だと登録出来ない" do
        @user.country_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include 'Country must be other than 1'
      end

      it 'cityが空だと登録出来ない' do
        @user.city = nil
        @user.valid?
        expect(@user.errors.full_messages).to include "City can't be blank"
      end

      it 'birthdayが空だと登録出来ない' do
        @user.birthday = nil
        @user.valid?
        expect(@user.errors.full_messages).to include "Birthday can't be blank"
      end
    end
  end
end
