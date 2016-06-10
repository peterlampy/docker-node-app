var os = require("os");
var dns = require("dns");

/**
 * GET /
 * Home page.
 */
exports.index = function(req, res) {
  dns.lookup(os.hostname(), function(err, add, fam) {
    res.render('home', {
      title: 'Home',
      hostname: os.hostname()
    });
  })
};
