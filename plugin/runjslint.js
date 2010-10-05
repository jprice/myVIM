(function(a) {
	var path = '/home/al/.vim/plugin/';
	load(path + 'fulljslint.js');
	load(path + 'jslint.settings.js');

	var input = "";
	var line = "";
	line = readline();

	while (line != null) {
		input += line;
		input += "\n";
		line = readline();
	}

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
