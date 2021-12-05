

var scheduleSchema = new Schema({
    name: {
        type: String,
        required: true
    },
    eventId: {
        type: mongoose.Types.ObjectId,
        ref:'Event'
    },
    repeat:{
        type: Number,
        default: 0
    },
});
