
var holidaySchema = new Schema({
    name: {
        type: String,
        required: true
    },
    timeStart: {
        type: Date,
    },
    timeEnd: {
        type: Date,
    },
    timeline:{
        type: ObjectId,
        ref: 'Timeline'
    },
});

