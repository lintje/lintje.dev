---
title: "Rules for commit types"
description: "Read about Lintje's rules for differen types of Git commits. These commits can be things like merge commits, or fixup and squash commits."
---

The rules listed on this page are about the nature of the Git commit. These commits can be things like merge commits, or fixup and squash commits.

<%= toc %>

<%= render "rules_list", :rules => rule_resources.reject { |r| name = r.data.name; name.start_with?("Subject") || name.start_with?("Message") || name.start_with?("Branch") } %>
