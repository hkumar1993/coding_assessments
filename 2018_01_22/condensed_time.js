// Given an array of meeting start and end times, condense all into condensed objects of time
// Ex:
// [
//     { startTime: 0, endTime: 1 },
//     { startTime: 3, endTime: 5 },
//     { startTime: 4, endTime: 8 },
//     { startTime: 10, endTime: 12 },
//     { startTime: 9, endTime: 10 },
// ]

// returns

// [
//     { startTime: 0, endTime: 1 },
//     { startTime: 3, endTime: 8 },
//     { startTime: 9, endTime: 12 },
// ]


function condensedTime(schedule){
    
    let result = []
    
    sortedSchedule = schedule.map(function(time){
        return Object.assign(time)
    });

    sortedSchedule = sortedSchedule.sort(function( time1, time2){
        return time1.startTime - time2.startTime
    })

    let currentMeeting = sortedSchedule[0]

    for (let i = 1; i < schedule.length; i++) {
        const meeting = schedule[i];
        if(mergeable(currentMeeting, meeting) || mergeable(meeting, currentMeeting)){
            currentMeeting = mergeMeetings(currentMeeting, meeting)
        } else {
            result.push(Object.assign(currentMeeting))
            currentMeeting = meeting
        }
    }
    result.push(Object.assign(currentMeeting))

    return result

}

function mergeable( meeting1, meeting2 ){
    if(meeting1.startTime >= meeting2.startTime && meeting1.startTime <= meeting2.endTime){
        return true;
    } else if(meeting1.endTime >= meeting2.startTime && meeting1.endTime <= meeting2.endTime){
        return true;
    } else {
        return false
    }
}

function mergeMeetings( meeting1, meeting2 ){
    return {
        startTime: Math.min(meeting1.startTime, meeting2.startTime),
        endTime: Math.max(meeting1.endTime, meeting2.endTime)
    }
}

const testSchedule = [
    { startTime: 0, endTime: 1 },
    { startTime: 3, endTime: 5 },
    { startTime: 4, endTime: 8 },
    { startTime: 10, endTime: 12 },
    { startTime: 9, endTime: 10 },
]

console.log(condensedTime(testSchedule))