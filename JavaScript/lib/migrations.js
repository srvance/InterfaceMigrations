'use strict';

var _ = require('underscore');

module.exports = (function () {
    // Public interface
    var migrations = {
        add: function (first, second) {
            return first + second;
        },

        subtract: function (start, less1, less2) {
            return start - less1 - less2;
        }
    };

    return migrations;
})();
