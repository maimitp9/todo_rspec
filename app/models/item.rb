class Item < ApplicationRecord
  belongs_to :list
  CUSS_WORDS = ['shit', 'fuck'].freeze
  def filter_body
    CUSS_WORDS.each do |word|
      self.body = self.body.gsub!(word, '****')
    end
    return self.body
  end
end
