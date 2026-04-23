module.exports = grammar({
  name: "tom",
  extras: (_) => [],
  rules: {
    source_file: ($) => repeat(choice($.line, $.blank_line)),
    line: ($) => seq($.generic, choice("\n", "\r\n")),
    generic: ($) => seq(field("key", $.key), field("value", optional($.value))),
    key: (_) => /[^\s\r\n]+/,
    value: (_) => /[^\r\n]*/,
    blank_line: (_) => /\r?\n/,
  },
});
