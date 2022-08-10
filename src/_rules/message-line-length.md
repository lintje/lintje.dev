---
name: MessageLineLength
type: error
---

<%= version_label "0.1.0" %>

The commit's message body has one or more lines that are too long. The maximum line length in a message body is 72 characters. Split sentences and paragraph across multiples lines.

Lines that include URLs that start with `http://` or `https://` are excluded from this rule. Lines that are too long inside code blocks are also ignored, because it's not always possible to reformat code to fit on a 72 character line.

~~~md
# Good - max 72 characters per line
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,
sed diam voluptua.

# Good - the only too long line includes URL
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.
Source:
https://url-to-page-that-is-very-long.org/but-still-valid-for-this-rule.html

# Good - the only long line is in a code block
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.

```
Example code block with a very long line that will be considered valid!!!!
```

```md
Example code block with a very long line that will be considered valid!!!!
```

``` md
Example code block with a very long line that will be considered valid!!!!
```

- Valid indented fenced code block inside a list
```
Example code block with a very long line that will be considered valid!
```

# Good - the only long line is in a code block
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.

Example code block with a very long line that will consider valid!!!!

# Bad - lines are too long
Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy aa
tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
~~~

### Notes about message line lengths

- Certain characters like emoji are counted as multiple characters in this rule. Read more about [Unicode support][unicode].
