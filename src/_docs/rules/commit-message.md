---
title: "Commit message rules"
description: "Lintje's rules for Git commit messages. These rules are made to improve Git commit messages and the format in which they are written."
---

The rules listed on this page are about the Git commit message. Descriptive commit messages are important during reviews and whenever someone looks back and has found a commit to contain a relevant change.

Good commit messages explain what the problem was that was solved, why the change was needed and what alternatives were considered. This information will give the reader the necessary context to leave a proper review or understand the constraints under which the commit was originally made.

<%= toc %>

<%= render "rules_list", :rules => rule_resources.select { |r| r.data.name.start_with?("Message") } %>
