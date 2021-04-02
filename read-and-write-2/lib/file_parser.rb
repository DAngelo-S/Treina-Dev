class FileParser
    def to_binary(number)
        number.to_s(2)
    end

    def to_binary_file(array)
        File.write("data/data.txt", array.split(";").map{|number| to_binary(number.to_i)}.join("\n"))
    end
end
