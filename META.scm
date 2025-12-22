;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; META.scm — baremetal-ssg

(define-module (baremetal-ssg meta)
  #:export (architecture-decisions development-practices design-rationale component-status))

(define architecture-decisions
  '((adr-001
     (title . "RSR Compliance")
     (status . "accepted")
     (date . "2025-12-15")
     (context . "Baremetal SSG satellite in the hyperpolymath ecosystem")
     (decision . "Follow Rhodium Standard Repository guidelines")
     (consequences . ("RSR Gold target" "SHA-pinned actions" "SPDX headers" "Multi-platform CI")))
    (adr-002
     (title . "Deno Runtime")
     (status . "accepted")
     (date . "2025-12-22")
     (context . "Need consistent cross-platform JavaScript runtime for adapters")
     (decision . "Use Deno as primary runtime for all adapters")
     (consequences . ("TypeScript support" "Built-in formatter/linter" "Secure by default" "No node_modules")))
    (adr-003
     (title . "MCP Hub Integration")
     (status . "accepted")
     (date . "2025-12-22")
     (context . "Part of poly-ssg-mcp satellite network")
     (decision . "Integrate with poly-ssg-mcp hub for unified SSG access")
     (consequences . ("Consistent adapter interface" "Cross-SSG tooling" "Shared protocols")))
    (adr-004
     (title . "Multi-Language SSG Support")
     (status . "accepted")
     (date . "2025-12-22")
     (context . "Support diverse SSG implementations across multiple programming languages")
     (decision . "Provide 28 adapters covering Rust, Haskell, Elixir, Julia, and more")
     (consequences . ("Broad ecosystem coverage" "Language-specific optimizations" "Unified interface")))))

(define development-practices
  '((code-style
     (languages . ("JavaScript" "Deno" "Scheme"))
     (formatter . "deno fmt")
     (linter . "deno lint"))
    (security
     (sast . "CodeQL")
     (credentials . "env vars only")
     (container-scanning . "trivy")
     (dependency-scanning . "dependabot"))
    (testing
     (framework . "deno test")
     (coverage-minimum . 70)
     (e2e . "integration tests"))
    (versioning
     (scheme . "SemVer 2.0.0"))
    (documentation
     (format . "AsciiDoc")
     (api-docs . "generated")
     (changelog . "CHANGELOG.md"))))

(define design-rationale
  '((why-rsr "RSR ensures consistency, security, and maintainability across the hyperpolymath ecosystem.")
    (why-deno "Deno provides secure defaults, TypeScript support, and eliminates node_modules complexity.")
    (why-satellite "Baremetal SSG provides low-level, bare-metal adapter implementations for maximum performance.")
    (why-polyglot "Supporting multiple languages enables the best tool for each SSG's native ecosystem.")))

(define component-status
  '((total-components . 44)
    (complete . 44)
    (categories
     ((core-engine . 4)
      (build-system . 4)
      (site-generation . 4)
      (adapters . 28)
      (testing . 4)))))
