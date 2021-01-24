class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_many :events
  belongs_to_active_hash :position

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:user_name]
         
  def update_without_current_password(params, *options) #パスワードをなしでeditページ更新
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
       params.delete(:password)
       params.delete(:password_confirmation)
    end
       result = update_attributes(params, *options)
       clean_up_passwords
       result
  end                                                   #パスワードをなしでeditページ更新

  with_options presence: true do
    validates :user_name, uniqueness: true, format: { with: /\A[a-z0-9]+\z/ }  # 半角アルファベット（小文字・数値）
    validates :position_id, numericality: { other_than: 1 } #1のときは登録できない
    validates :name, uniqueness: true, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/ } # 日本語のみ
    validates :name_kana, format: { with: /\A[\p{katakana} ー－&&[^ -~｡-ﾟ]]+\z/ } # カタカナのみ
  end



  #  emailを不使用に
  def email_required?
    false
  end

  def email_changed?
    false
  end

  def will_save_change_to_email?
    false
  end
  #  emailを不使用に
end
