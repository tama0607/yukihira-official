require 'rails_helper'

RSpec.describe Contact, type: :model do
  before do
    @contact =FactoryBot.build(:contact)
  end

  describe 'お問合せフォーム' do
    it 'nicknameが空では送信できない' do
      @contact.name = ''
      @contact.valid?
      expect(@contact.errors.full_messages).to include("Name can't be blank")
    end
    it 'emailが空では送信できない' do
      @contact.email = ''
      @contact.valid?
      expect(@contact.errors.full_messages).to include("Email can't be blank")
    end
    it 'subjectが空では送信できない' do
      @contact.subject = ''
      @contact.valid?
      expect(@contact.errors.full_messages).to include("Subject can't be blank")
    end
    it 'messageが空では送信できない' do
      @contact.message = ''
      @contact.valid?
      expect(@contact.errors.full_messages).to include("Message can't be blank")
    end
    it 'emailは@を含まないと登録できない' do
      @contact.email = 'testmail'
      @contact.valid?
      expect(@contact.errors.full_messages).to include("Email is invalid")
    end
    it 'messageが20文字以下では登録できない' do
      @contact.message = 'testtest'
      @contact.valid?
      expect(@contact.errors.full_messages).to include("Message is too short (minimum is 20 characters)")
    end
    it 'messageが500文字以上では登録できない' do
      @contact.message = Faker::String.random(length: 501)
      @contact.valid?
      expect(@contact.errors.full_messages).to include("Message is too long (maximum is 500 characters)")
    end
  end
end
