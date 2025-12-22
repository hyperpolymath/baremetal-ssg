;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; PLAYBOOK.scm — baremetal-ssg

(define-module (baremetal-ssg playbook)
  #:export (workflows operations runbooks hooks))

;;; Workflows define common development operations
(define workflows
  '((development
     ((setup . ("deno install" "just deps"))
      (build . ("just build" "just lint" "just fmt"))
      (test . ("just test" "just test-e2e"))
      (validate . ("just rsr-check" "just security-check"))))

    (ci-cd
     ((on-push . ("lint" "fmt-check" "test" "build"))
      (on-pr . ("lint" "fmt-check" "test" "security-scan" "build"))
      (on-release . ("build" "test" "container-build" "publish"))))

    (adapter-development
     ((create . ("copy template" "update metadata" "implement interface"))
      (test . ("unit test" "integration test" "manual verification"))
      (integrate . ("add to index" "update cookbook" "update count"))))))

;;; Operations define atomic tasks
(define operations
  '((init-project
     (description . "Initialize new baremetal-ssg workspace")
     (command . "just init")
     (prerequisites . ("deno >= 1.40" "just >= 1.0")))

    (add-adapter
     (description . "Add new SSG adapter")
     (command . "just new-adapter NAME LANGUAGE")
     (template . "adapters/_template.js"))

    (run-all-tests
     (description . "Execute complete test suite")
     (command . "just test-all")
     (includes . ("unit" "integration" "e2e")))

    (container-build
     (description . "Build container images")
     (command . "just container-build")
     (outputs . ("baremetal-ssg:latest" "baremetal-ssg:alpine")))

    (security-audit
     (description . "Run security checks")
     (command . "just security-check")
     (includes . ("CodeQL" "dependabot" "trivy")))))

;;; Runbooks for common scenarios
(define runbooks
  '((new-release
     ((steps . ("Update version in STATE.scm"
                "Update CHANGELOG.md"
                "Run just test-all"
                "Run just rsr-check"
                "Create git tag"
                "Push with tags"
                "GitHub Actions handles release"))))

    (security-incident
     ((steps . ("Assess severity"
                "Create private security advisory"
                "Develop fix in private branch"
                "Coordinate disclosure"
                "Release patch"
                "Publish advisory"))))

    (adapter-troubleshooting
     ((steps . ("Check SSG binary availability"
                "Verify environment variables"
                "Test with just test-adapter NAME"
                "Check logs in logs/"
                "Consult adapter-specific docs"))))))

;;; Hook configurations
(define hooks
  '((pre-commit
     ((actions . ("just fmt" "just lint"))
      (fail-on-error . #t)))

    (pre-push
     ((actions . ("just test" "just rsr-check"))
      (fail-on-error . #t)))

    (post-merge
     ((actions . ("deno install" "just build"))
      (fail-on-error . #f)))))
