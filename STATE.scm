;;; STATE.scm — baremetal-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define metadata
  '((version . "0.1.0") (updated . "2025-12-18") (project . "baremetal-ssg")))

(define current-position
  '((phase . "v0.1 - Foundation")
    (overall-completion . 35)
    (components
     ((rsr-compliance ((status . "complete") (completion . 100)))
      (adapters ((status . "complete") (completion . 100) (count . 28)))
      (security-policy ((status . "complete") (completion . 100)))
      (documentation ((status . "in-progress") (completion . 20)))
      (testing ((status . "not-started") (completion . 0)))
      (mcp-integration ((status . "planned") (completion . 0)))))))

(define blockers-and-issues
  '((critical ())
    (high-priority
     (("README needs content" . documentation)
      ("No test suite" . testing)))))

(define critical-next-actions
  '((immediate
     (("Write README documentation" . high)
      ("Set up Deno test framework" . high)))
    (this-week
     (("Add integration tests for adapters" . medium)
      ("Verify MCP hub integration" . medium)))
    (this-month
     (("Add CI workflow for testing" . low)
      ("Create contribution guide updates" . low)))))

(define roadmap
  '((v0.1-foundation
     ((status . "in-progress")
      (goals . ("28 SSG adapters" "RSR compliance" "Security policy" "Basic documentation"))
      (completion . 80)))
    (v0.2-testing
     ((status . "planned")
      (goals . ("Unit tests for all adapters" "Integration test framework" "CI/CD pipeline"))
      (completion . 0)))
    (v0.3-mcp-integration
     ((status . "planned")
      (goals . ("Full poly-ssg-mcp hub integration" "MCP protocol compliance" "Cross-adapter testing"))
      (completion . 0)))
    (v0.4-documentation
     ((status . "planned")
      (goals . ("API documentation" "Usage examples" "Contribution guidelines"))
      (completion . 0)))
    (v1.0-stable
     ((status . "planned")
      (goals . ("Production ready" "Full test coverage" "Published to registries"))
      (completion . 0)))))

(define session-history
  '((snapshots
     ((date . "2025-12-15") (session . "initial") (notes . "SCM files added"))
     ((date . "2025-12-18") (session . "security-review") (notes . "Fixed SECURITY.md placeholders, updated project names in SCM files")))))

(define state-summary
  '((project . "baremetal-ssg")
    (completion . 35)
    (blockers . 0)
    (adapters . 28)
    (updated . "2025-12-18")))
