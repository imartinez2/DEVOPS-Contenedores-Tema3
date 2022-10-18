const db = require('../persistence');

module.exports = async (req, res) => {
    res.send({cn: process.env.CN});
};
