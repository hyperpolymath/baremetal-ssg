;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; AGENTIC.scm — baremetal-ssg

(define-module (baremetal-ssg agentic)
  #:export (agent-capabilities mcp-integration automation-rules))

;;; Agent capabilities for AI-assisted development
(define agent-capabilities
  '((code-generation
     ((adapters . "Generate new SSG adapter from template")
      (tests . "Generate unit and integration tests")
      (documentation . "Generate API documentation from code")))

    (code-review
     ((security . "Identify security vulnerabilities")
      (style . "Check RSR compliance and code style")
      (performance . "Suggest performance improvements")))

    (automation
     ((ci-cd . "Manage GitHub Actions workflows")
      (releases . "Automate version bumps and changelogs")
      (dependencies . "Update and audit dependencies")))))

;;; MCP (Model Context Protocol) integration
(define mcp-integration
  '((server-config
     ((name . "baremetal-ssg")
      (version . "1.0.0")
      (transport . "stdio")))

    (tools-provided
     ((ssg-init . "Initialize SSG project")
      (ssg-build . "Build static site")
      (ssg-serve . "Start development server")
      (ssg-deploy . "Deploy to hosting")
      (adapter-list . "List available adapters")
      (adapter-info . "Get adapter details")))

    (resources-provided
     ((adapters . "adapters/*.js")
      (documentation . "*.adoc")
      (configuration . "*.scm")))

    (prompts-provided
     ((new-adapter . "Guide for creating new adapter")
      (troubleshoot . "Debug SSG issues")
      (migrate . "Migrate between SSGs")))))

;;; Automation rules for agentic workflows
(define automation-rules
  '((on-new-issue
     ((type . "bug")
      (action . "triage and label")
      (assign . "maintainer")))

    (on-pr-opened
     ((checks . ("lint" "test" "security"))
      (auto-review . #t)
      (require-approval . 1)))

    (on-vulnerability
     ((severity . "high|critical")
      (action . "create-advisory")
      (notify . "security-team")))

    (on-adapter-request
     ((action . "create-issue-template")
      (label . "enhancement")
      (checklist . ("SSG research" "Language support" "Implementation" "Testing" "Documentation"))))))
