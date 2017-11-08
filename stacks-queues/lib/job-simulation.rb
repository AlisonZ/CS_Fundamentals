require_relative 'Queue.rb'
require_relative 'Stack.rb'


class JobSimulation
    attr_reader :employed, :waiting, :roll
    def initialize#(jobs_available, job_seekers)
    @employed = Stack.new
    @waiting = Queue.new
    @roll
end

def make_employees
    #this logic can happen in the initialize
    #this creates a stack of employees could later do it with initialize number of jobs available and job seekers
    #loop that creates creates array needs to be based on number of jobs available

    employed = ["Worker #1", "Worker #2", "Worker #3", "Worker #4", "Worker #5", "Worker #6"]

    employed.each do |worker|
        @employed.push(worker)
    end

    #this isn't working because the Queue is a thread::queue
    waiting = ["Worker #7", "Worker #8", "Worker #9", "Worker #10"]
    waiting.each do |worker|
        @waiting.push(worker)
    end
    @waiting.class


end


# def roll
#     @roll = rand(1..3)
#     # return @roll.class
# end


# def fired
#     make_employees
#     roll
#     puts @roll
#
#     #need to use an enqueue here which is just the push method for a queue
#     #enqueue takes an element to push, so need to save each popped fired element so can use as the argument for enqueue
#     #pop first, then enqueue that one
#     @roll.times do
#         fired = @employed.pop
#         @waiting.enqueue(fired)
#     end
#
#
#     #runs hiring method
#     # hired
# end


# def hired
#     # @roll.times do
#     #     hired = @waiting.dequeue
#     #     @employed.push(hired)
#     # end
# end



    # def cycle
    #
    # end

end

sim = JobSimulation.new
# puts sim.employed.class
# puts sim.waiting.class
puts sim.make_employees
# puts sim.roll
# puts sim.fired
# puts sim.hired
