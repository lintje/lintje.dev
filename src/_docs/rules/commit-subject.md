---
title: "Rules for subjects"
description: "Lintje's rules for Git commit subjects. These rules are made to improve the Git commit subject: the first thing people see when they see a commit."
---

The rules listed on this page are about the Git commit subject. The subject is the first thing other people see when they look at an individual commit or a history of a branch or Pull Request. That commit subjects are clear and to the point is important.

<%= toc %>

<%= render "rules_list", :rules => rule_resources.select { |r| r.data.name.start_with?("Subject") } %>
