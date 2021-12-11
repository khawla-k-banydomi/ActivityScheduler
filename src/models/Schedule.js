var mongoose = require('mongoose');
var Schema = mongoose.Schema;

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

module.exports = mongoose.model('Schedule', scheduleSchema);