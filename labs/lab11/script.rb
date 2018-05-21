Script started on Mon 08 May 2017 03:37:45 PM EDT
ajs94@aiken:~/CS214/labs/lab11/ruby$ cat threaded_array_ _sum.rb
# array_sum.rb sums the values in an array
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Aaron Santucci
# Date: May 8, 2017
#
# Usage: ruby array_sum.rb <inFileName>
######################################################

# make certain the input file was specified on the command-line
def checkCommandLine
  if ARGV.length != 2
     puts "\nUsage: sum <fileName><numThreads>\n\n"
     exit(1)
  end
end

# return: an array containing the values from the file
#  whose name was specified on the command-line
def readFile
   strArray = IO.readlines( ARGV[0] )
   intArray = Array.new( Integer(strArray[0]) )
   for i in 2..strArray.size
      if  !strArray[i].nil?
         intArray[i-2] = Integer( strArray[i].chomp )
      end
   end
   intArray 
end

def sumSlice(values, id, sliceSize)
  start = id * sliceSize
  stop = start + sliceSize - 1
  myTotal = 0
  for i in start..stop
    myTotal += values[i]
  end
  myTotal  
end

# Return: the sum of the values 
def sum(values)
   result = 0
   values.each{ |number| result += number }
   result
end

# Parallel sum function
def sumInParallel(values, numThreads)
  sliceSize = values.size / numThreads
  threadArray = Array.new( numThreads )
      result = 0
  lock = Mutex.new
  
  (1..numThreads-1).each do | i |
    threadArray[i] = Thread.new { 
      myTotal = sumSlice(values, 
        i,
        sliceSize) 
      lock.synchronize {
        result += myTotal
        }
      }      
  end

  myTotal  = sumSlice(values, 0, sliceSize)
  leftovers = values.size % numThreads
  if leftovers > 0
    for i in values.size-leftovers..values.size-1
      myTotal += values[i]
    end    
  end

  lock.synchronize {
    result += myTotal
    }  
  for i in 1..numThreads-1
    threadArray[i].join  
  end      
  result   
end

def main
   checkCommandLine
   values = readFile
   startTime = Time.now
   total = sumInParallel(values, Integer( ARGV[1] ) )
   endTime = Time.now
   interval = (endTime - startTime).to_f
   puts "\nThe sum is #{total}\n"
   printf(" and computing it took %.9f seconds.\n\n", interval)
end

main

ajs94@aiken:~/CS214/labs/lab11/ruby$ cat threaded_array_sum.rbruby threaded_array_sum.rb /home/cs/214/labss/11/numbers/1000000numbers.txt 4

The sum is 50473230
 and computing it took 0.043405133 seconds.

ajs94@aiken:~/CS214/labs/lab11/ruby$ ruby threaded_array_sum.rb /home/cs/214/labss/11/numbers/1000000numbers.txt 4[Aby$ [18Pcat threaded_array_sum.r
[K[Aajs94@aiken:~/CS214/labs/lab11/ruby$ cat threaded_array_sum.rbruby threaded_array_sum.rb /home/cs/214/labss/11/numbers/1000000numbers.txt 41

The sum is 50473230
 and computing it took 0.041732831 seconds.

ajs94@aiken:~/CS214/labs/lab11/ruby$ exit

Script done on Mon 08 May 2017 03:38:08 PM EDT
