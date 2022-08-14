---
title: "Lintje rules"
description: "Learn more about the different types of rules Lintje checks for, how they work and how to resolve any issues."
---

All the rules Lintje follows are documented in this rules section. Visit the sub-pages for [each type of rule](#available-rule-types). The headings on each page matches the rule names, and can be used to [ignore specific rules per commit](/docs/configuration/#ignoring-rules-per-commit).

_Lintje is primarily focussed on supporting the English language, other languages may not be compatible with every rule currently. Please [create an issue][issues] if you run into any problems._

<%= toc %>

## Available rule types

Read the rules pages for all the rules Lintje checks and how to fix them. For more information about why Lintje has these rules, please read the [philosophy page](/docs/philosophy/).

- [Commit subject](/docs/rules/commit-subject/)
- [Commit message](/docs/rules/commit-message/)
- [Commit type](/docs/rules/commit-type/)
- [Branch](/docs/rules/branch/)

There is also a [list of all available rules](#rules) available.

## All available rules {#rules}

<table>
  <thead>
    <tr>
      <th class="td-width-50p">Rule name</th>
      <th>Rule type</th>
    </tr>
  </thead>
  <tbody>
<% rule_resources.each do |resource| %>
<% name = resource.data.name %>
    <tr>
      <td><%= link_to name, rule_path(name) %></td>
      <td>
        <span title="<%= rule_type_description(resource.data.fetch(:type)) %>">
          <%= raw rule_type_icon_with_label resource.data.fetch(:type) %>
        </span>
      </td>
    </tr>
<% end %>
  </tbody>
</table>

## A note about Unicode display width {#unicode}

Not all characters render with the same display width in columns in the terminal. The `a` character has a width of one column, but an emoji usually is wider than one column. Lintje's rules will count line length in characters using their display width. This means a subject can contain 50 characters like the `a` character, but it cannot contain 50 emoji that are two columns wide. Such an emoji heavy subject is allowed a maximum of 25 emoji for the [SubjectLength rule](/docs/rules/commit-subject/#subjectlength).

Not all emoji render with the same width and may break the layout of Lintje's output, and cause problems with rules that calculate line length. Lintje will attempt to correct the automatic width calculation of character width, but some characters may not be calculated correctly. This is a bug. Please [report any characters with that break the output][issues].

For example, by default the "Green Check Mark" emoji `✅` has a width of two, while the "Woman Scientist" emoji `👩‍🔬` has a width of four columns. This is because the second emoji is a combination of the `👩` and `🔬` emoji. Normally they would both be counted towards the width even though only one emoji is rendered. This particular scenario is calculated and rendered properly as two columns in Lintje.

The heart emoji `❤️`, and similar emoji, will only have a width of one column, this is by design as most other (terminal) apps–in which Lintje will print its output–will also render it with a width of one column.

[issues]: <%= site.metadata.issue_tracker %>
