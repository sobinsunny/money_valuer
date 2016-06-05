require "money_valuer/version"
require 'open-uri'

module MoneyValuer
    attr_accessor :resource

    class ArgumentError

    end

    SERVICE_HOST = "www.google.com"
    SERVICE_PATH = "/finance/converter"

    def self.check_rate(amount,from,to)
      data = build_uri(amount,from, to).read
      rate = extract_rate(data)
    end


    def self.build_uri(amount,from,to)
      uri = URI::HTTP.build(
          :host  => SERVICE_HOST,
          :path  => SERVICE_PATH,
          :query => "a=#{amount}&from=#{from}&to=#{to}"
      )
    end
  


    def self.extract_rate(data)
      case data
        when /<span class=bld>(\d+\.?\d*) [A-Z]{3}<\/span>/
          return $1.to_f
        when /Could not convert\./
          raise(UnknownRate,"Invalid input data")
        else
          raise(ArgumentError, ":baz must be a boolean")
      end
    end

end
