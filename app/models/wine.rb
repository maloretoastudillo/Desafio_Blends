class Wine < ApplicationRecord
    has_many :blends, dependent: :destroy
    has_many :strains, through: :blends

    validates :year, numericality: { less_than_or_equal_to: Time.now.year.to_i }
    validate :check_percentage
    validate :check_strains

    accepts_nested_attributes_for   :blends,
                                    allow_destroy: true,
                                    reject_if: proc { |attributes| attributes[:percentage].blank? }


    def ordered
        Blend.includes(:strain).where(wine_id: self.id).order(:name).pluck(:name, :percentage)
    end

    def check_percentage
        percentages = self.blends.map { |blend| blend.percentage }
        total_percentage = percentages.sum

        unless total_percentage == 100
            errors.add(:blends, "Los ensamblajes deben sumar 100%")
        end
    end

    def check_strains
        strains = self.blends.map { |blend| blend.strain_id}

        unless strains.size == strains.uniq.size
            errors.add(:blends, "Los ensamblajes no deben repetir cepas")
        end
    end


end
