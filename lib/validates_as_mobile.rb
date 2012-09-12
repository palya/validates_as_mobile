# encoding: UTF-8
require 'validates_as_mobile/version'

module ValidatesAsMobile

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def validates_as_mobile(*args)
      regexp_not_blank = /\A((8|\+7)[\s]?)\(?(9[0-3][0-9]|941|95[0-6]|958|96[0-8]|97[0-1]|98[0-5]|98[7-9]|99[2-7]|999)\)?[-.|\s ]?([0-9]{3})[-.|\s]?([0-9]{2})[-.|\s ]?([0-9]{2})\z/
      regexp_with_blank = /\A(((8|\+7)[\s]?)\(?(9[0-3][0-9]|941|95[0-6]|958|96[0-8]|97[0-1]|98[0-5]|98[7-9]|99[2-7]|999)\)?[-.|\s ]?([0-9]{3})[-.|\s]?([0-9]{2})[-.|\s ]?([0-9]{2}))?\z/

      configuration = { :message => 'Not Russian mobile phone format.', :with => regexp_not_blank, :allow_nil => false }

      configuration.update(args.pop) if args.last.is_a?(Hash)
      configuration[:with] = regexp_with_blank if configuration[:allow_nil]

      validates args.first, :format => configuration
    end
  end
end

ActiveRecord::Base.send(:include, ValidatesAsMobile)