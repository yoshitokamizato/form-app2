class User < ApplicationRecord

  serialize :skils

  validates :name, presence: true
  validates :age, presence: true
  validates :mail, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}, presence: true
  validates :address, presence: true
  validates :gender, presence: true
  validates :program, presence: true
  validates :skils, presence: true

  has_many :user_programmings, foreign_key: 'user_id' # 中間テーブルを介したデータの取り出し
  has_many :programmings, through: :user_programmings # 中間テーブルを介したデータの取り出し

  def self.import(path)
    CSV.foreach(path, headers: true) do |row|
      User.find_or_create_by(
          name: row["name"],
          age: row["age"],
          address: row["address"],
          gender: row["gender"],
          program: row["program"],
          skils: ["ruby", "php", "java"],
          mail: row["mail"],
      )
    end
  end

  def self.export
    user = User.pluck(:skils)
    CSV.open("write-sample2.csv", "w") do |test|
      test << user
    end
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
      {width: img.columns, height: img.rows}
    end
  end
end
