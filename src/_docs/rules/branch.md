---
title: "Branch rules"
description: "Read about Lintje's rules for Git branches. Descriptive branch names are important, so that people can identify the topic of the change by just the name alone."
---

The rules listed on this page are about the Git branch on which commits are made. Descriptive branch names are important, so that people can identify the topic of the change by just the name alone.

<%= toc %>

<%= render "rules_list", :rules => rule_resources.select { |r| r.data.name.start_with?("Branch") } %>
