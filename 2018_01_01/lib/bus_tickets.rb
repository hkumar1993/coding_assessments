require 'byebug'

# def bus_tickets( dates )
#     day_ticket = 2
#     week_ticket = 7
#     month_ticket = 20

#     min_value_at_days = Hash.new

#     prev_day_min_value = 0
#     prev_day_ticket_set = []
    
#     dates.each do |day|
#         current_min_value = Float::INFINITY
#         current_min_ticket_set = []

#         day_value = day_ticket + prev_day_min_value

#         if min_value_at_days[]
#             week_value = 
#         else
            
#         end

#         min_value_at_days[day] = {
#             value: current_min_value,
#             ticket_set: current_min_ticket_set
#         }
#         prev_day_min_value = current_min_value

#     end

#     min_value_at_days[dates.last]

# end

def bus_tickets(days)
    n = days.length
    dates = days.dup << Float::INFINITY
    tickets = Array.new(n)
    cost = Array.new(n+1)
    cost[-1] = 0
    
    (n-1).downto(0) do |i|

        current_min_cost = Float::INFINITY
        current_ticket = nil

        day_cost = 2 + cost[i+1]
        k7 = min_day(dates, i, 7)
        week_cost = 7 + cost[k7]
        k30 = min_day(dates, i, 30)
        month_cost = 25 + cost[k30]

        if day_cost < current_min_cost
            current_min_cost = day_cost
            current_ticket = 1
        end
        
        if week_cost < current_min_cost
            current_min_cost = week_cost
            current_ticket = 7
        end
        
        if month_cost < current_min_cost
            current_min_cost = month_cost
            current_ticket = 30
        end

        tickets[i] = current_ticket
        cost[i] = current_min_cost

    end

    p cost
    p tickets

    cost.first
    
end

def min_day(dates, i, diff)
    dates.each_with_index do |el, id|
        return id if el >= dates[i] + diff
    end
end