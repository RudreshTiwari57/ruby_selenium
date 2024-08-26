Before do |scenario|
    fileobject = File.open("results.txt", "a+")
    fileobject.syswrite(scenario.name+"\n")
    fileobject.close()
end

After do |scenario|
    time = Time.new
    fileobject = File.open("results.txt", "a+")
    if(scenario.failed?)
        fileobject.syswrite("   "+scenario.name+"            ")
        fileobject.syswrite(time.strftime("%Y-%m-%d %H:%M:%S"))
        fileobject.syswrite("              Failed          "+scenario.exception.message+"\n")
    else 
        fileobject.syswrite("   "+scenario.name+"                 ")
        fileobject.syswrite(time.strftime("%Y-%m-%d %H:%M:%S"))
        fileobject.syswrite("                  Passed\n")

    end
    fileobject.close()
end


AfterStep do |scenario,steps|
    time = Time.new
    fileobject = File.open("results.txt", "a+")
    fileobject.syswrite("   ")
    fileobject.syswrite(steps)
    fileobject.syswrite("              ")
    fileobject.syswrite(time.strftime("%Y-%m-%d %H:%M:%S"))
    fileobject.syswrite("               step passed\n")
    fileobject.close()
end
