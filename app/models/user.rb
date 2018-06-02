class User < ActiveRecord::Base
  serialize :skils

  validates :name, presence: true
  validates :age, presence: true
  validates :mail, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, presence: true
  validates :address, presence: true
  validates :gender, presence: true
  validates :program, presence: true
  validates :skils, presence: true

  def searchAll
    return User.all
  end

  def searchId(id1,id2)
    return User.find_by_sql(['select * from users where id >= :id1 and id <= :id2', {id1: id1, id2: id2}])
  end

  def searchData(user)
    return User.find_by_sql(['SELECT * FROM users WHERE CONCAT(id, name, address, gender, program, skils) LIKE :user', {user: "%#{user}%"}])
  end

  mount_uploader :image, ImageUploader
  # ↓ これらを追記
  # ------------------------------------------------------------------
  # Validations
  # ------------------------------------------------------------------
  # validate def check_image_dimensions
  #   if geometry[:width] < 400 || geometry[:height] < 400
  #     errors.add :image, '400x400ピクセル以上のサイズの画像をアップロードしてください'
  #   end
  # end
  # ------------------------------------------------------------------
  # Public Instance Methods
  # ------------------------------------------------------------------
  def geometry
    @geometry ||= _geometry
  end
  private
  # ------------------------------------------------------------------
  # Private Instance Methods
  # ------------------------------------------------------------------
  def _geometry
    if image.file and File.exists?(image.file.file)
      img = ::Magick::Image::read(image.file.file).first
      { width: img.columns, height: img.rows }
    end
  end
end
