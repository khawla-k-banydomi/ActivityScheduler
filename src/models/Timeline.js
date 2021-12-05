

var timelineSchema = new Schema({
    name: {
        type: String,
        required: true
    },
    schedule:
        [
            {
                'sid': {
                    type: ObjectId,
                    ref: 'Schedule'
                }
            }]
    ,
    timeStart: {
        type: Date,
    },
    timeEnd: {
        type: Date,
    },
});

