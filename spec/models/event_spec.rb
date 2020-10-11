require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'イベント新規登録' do
    before do
      @event = FactoryBot.build(:event)
      @event.image = fixture_file_upload('public/images/test_image.png')
    end

    context '新規登録がうまくいくとき' do
      it '全ての項目（title, country_id, category_id, start_time, end_time, online, place, content）が存在すれば、登録出来る' do
        expect(@event).to be_valid
      end
    end

    context '新規登録がうまくいなかないとき' do
      it "country_idが'--'だと登録出来ない" do
        @event.country_id = 1
        @event.valid?
        expect(@event.errors.full_messages).to include 'Country has to be selected'
      end

      it 'titleが空だと登録できない' do
        @event.title = nil
        @event.valid?
        expect(@event.errors.full_messages).to include "Title can't be blank"
      end

      it "category_idが'--'だと登録出来ない" do
        @event.category_id = 1
        @event.valid?
        expect(@event.errors.full_messages).to include 'Category has to be selected'
      end

      it 'start_timeが空だと登録できない' do
        @event.start_time = nil
        @event.valid?
        expect(@event.errors.full_messages).to include "Start time can't be blank"
      end

      it 'end_timeが空だと登録できない' do
        @event.end_time = nil
        @event.valid?
        expect(@event.errors.full_messages).to include "End time can't be blank"
      end

      it 'onlineが空だと登録できない' do
        @event.online = nil
        @event.valid?
        expect(@event.errors.full_messages).to include 'Online has to be selected'
      end

      it 'placeが空だと登録できない' do
        @event.place = nil
        @event.valid?
        expect(@event.errors.full_messages).to include "Place can't be blank"
      end

      it 'contentが空だと登録できない' do
        @event.content = nil
        @event.valid?
        expect(@event.errors.full_messages).to include "Content can't be blank"
      end

      it 'imageが空だと登録できない' do
        @event.image = nil
        @event.valid?
        expect(@event.errors.full_messages).to include "Image can't be blank"
      end
    end
  end
end
