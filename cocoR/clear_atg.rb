require "FileUtils"

fname = $*[0]
p "clean #{fname}"

target = "#{File.dirname(fname)}/#{File.basename(fname, ".atg")}_clean.atg"
p "target #{target}"

def read_file(fname)
    begin
        if FileTest::exists?(fname) 
            data= nil  
            open(fname, "r") {|f|
                   data = f.read
            }
            return data
        else
            p "file #{fname} not exsits"
        end
    rescue Exception=>e
         # logger.error e
         p e.inspect
    end
    return nil
end
def save_to_file(data, fname)
    dir = File.dirname(fname)
    FileUtils.makedirs(dir)
    begin
            open(fname, "w+") {|f|
                   f.write(data)
               }    
    rescue Exception=>e
         err e
         return false
    end
    return true
end
content = read_file(fname)

c = content.gsub(/\(\..*?\.\)/m, "")
save_to_file(c, target)