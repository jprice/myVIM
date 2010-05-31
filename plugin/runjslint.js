(function(a) {
  var path='~/.vim/plugin/';
  load(path + 'jslint.js');
  load(path + 'jslint.settings.js');
var input = readFile(a[0]);
  if (!JSLINT(input, jslintOpts)) {
    for (var i = 0; i < JSLINT.errors.length; i += 1) {
      var e = JSLINT.errors[i];
      if (e) {
        print(a[0] + ':' + (e.line) + ':' + (e.character + 1) + ': ' + e.reason + ' ... ' + e.evidence + ' ... ');
      }
    }
  } else {
    //print("jslint: No problems.");
    quit();
  }

})(arguments);
