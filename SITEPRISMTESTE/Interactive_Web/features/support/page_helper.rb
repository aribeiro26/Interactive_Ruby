Dir[File.join(File.dirname(__FILE__), '../pages/*page.rb')].each { |file| require file}

module Pages

    def page

        @page ||= Pesquisa.new

    end

    def cmp

        @cmp ||= Compra.new
    end

end        