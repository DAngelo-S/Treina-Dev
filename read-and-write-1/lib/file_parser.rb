class FileParser
    def to_integer(number)
        number.to_i(2)
    end

    def convert(name_arq)
        File.read(name_arq).split("\n").map{|number| to_integer(number)}.sum
    end
end
