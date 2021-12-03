var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var eventSchema = new Schema({
    name: {
        type: String,
        required: true
    },
    description: {
        type: String,
    },
    startTime: {
        type: Date,
        default: Date.now()
    },
    endTime: {
        type: Date,
        default: Date.now()
    },
    reminderTime: {
        type: Date,
        default: Date.now()
    },
    type: {
        type: String,
        enum: ['urgent', 'not urgent', 'normal']
    },
});


module.exports = mongoose.model('Event', eventSchema);
