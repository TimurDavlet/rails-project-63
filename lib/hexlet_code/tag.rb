module HexletCode
  module Tag
    def self.build(tag, param = {})
      return "<#{tag}>" if param.empty?
      result = []
      param.each {|key, value| result << "#{key}=#{value}" }
      "<#{tag} #{result.join('&')}>"
    end
  end
end