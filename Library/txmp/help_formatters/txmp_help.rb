require 'erb'

module Commander
  module HelpFormatter
    class TxmpHelp < Terminal
      def template name
        ERB.new(File.read(File.join(File.dirname(__FILE__), 'TXMP_HELP', "#{name}.erb")), nil, '-')
      end
    end
  end
end