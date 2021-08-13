log_file = open("um-server-01.txt")   #This allows us to call log_file to open the data file.


def sales_reports(log_file):          # This is called a list allows us to call sales_report and it will run the code inside
    for line in log_file:             # for statement 
        line = line.rstrip()          # rstrip removes the ending that is added when you make a data file
        day = line[0:3]               # day equals line/string at index 0. 3 characters long?
        if day == "Mon":              # if the line above == tuesday print that line
            print(line)


sales_reports(log_file)              #calling the list to run it 
log_file.close()                     #This closes the file after it is ran