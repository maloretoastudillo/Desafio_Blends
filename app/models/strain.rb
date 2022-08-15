class Strain < ApplicationRecord
    has_many :blends, dependent: :destroy
    has_many :wines, through: :blends

    validates :name, presence: true
    validates :name, uniqueness: true
end
