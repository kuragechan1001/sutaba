class Post < ApplicationRecord
  has_one_attached :illustration_image

  # 他のバリデーションやアソシエーションがあればここに
end
