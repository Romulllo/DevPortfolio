class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.angular
        where(subtitle: "Angular")
    end

    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails") }

    after_initialize :set_defauts

    def set_defauts
        self.main_image ||= 'https://via.placeholder.com/600x400'
        self.thumb_image ||= 'https://via.placeholder.com/350x150'
    end
end
