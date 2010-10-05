load("/home/al/.vim/plugin/beautify.js");
load("/home/al/.vim/plugin/beautify-html.js");

function do_beautify(type, options, source) {
	var result = "Type is unknown, use js or html instead";
	options = options || {};
	var indent_size = options.indent_size || 1;
	var indent_char = options.indent_char || '\t';
	var max_char = options.max_char || 25;
	var preserve_newlines = options.preserve_newlines || true;
	var jslint_pedantic = options.jslint_pedantic || false;
	var keep_array_indentation = options.keep_array_indentation || false;
	var braces_on_own_line = options.braces_on_own_line || false;
	if (type == "js") {
		result = js_beautify(source, {
			indent_size: indent_size,
			indent_char: indent_char,
			preserve_newlines: preserve_newlines,
			space_after_anon_function: jslint_pedantic,
			keep_array_indentation: keep_array_indentation,
			braces_on_own_line: braces_on_own_line
		});
	} else if (type == "html") {
		result = style_html(source, indent_size, indent_char, max_char);
	}
	return result;
}
var input = "";
var line = "";
line = readline();
while (line !== null) {
	input += line;
	input += "\n";
	line = readline();
}
print(do_beautify(arguments[0], eval(arguments[1]), input));
