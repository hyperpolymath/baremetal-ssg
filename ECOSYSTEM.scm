;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; ECOSYSTEM.scm — baremetal-ssg

(ecosystem
  (version "1.0.0")
  (name "baremetal-ssg")
  (type "project")
  (purpose "Static site generator adapters for the hyperpolymath ecosystem")

  (position-in-ecosystem
    "Satellite project in the hyperpolymath poly-ssg-mcp network. Follows RSR guidelines.
     Provides bare-metal adapter implementations for maximum performance and control.")

  (hub-connection
    (hub "poly-ssg-mcp")
    (protocol "MCP")
    (status "integrated"))

  (related-projects
    (project
      (name "poly-ssg-mcp")
      (url "https://github.com/hyperpolymath/poly-ssg-mcp")
      (relationship "hub")
      (description "Unified MCP server for 29 SSGs across 20 languages")
      (differentiation
        "poly-ssg-mcp = Central hub coordinating all SSG adapters via MCP
         baremetal-ssg = Satellite providing bare-metal adapter implementations"))
    (project
      (name "rhodium-standard-repositories")
      (url "https://github.com/hyperpolymath/rhodium-standard-repositories")
      (relationship "standard")
      (description "RSR compliance guidelines and templates"))
    (project
      (name "hackenbush-ssg")
      (url "https://github.com/hyperpolymath/hackenbush-ssg")
      (relationship "sibling-satellite")
      (description "Template satellite SSG implementation")))

  (adapters-provided
    ((language "Rust") (ssgs ("Zola" "Cobalt" "mdBook")))
    ((language "Haskell") (ssgs ("Hakyll" "Ema")))
    ((language "Elixir") (ssgs ("Serum" "Tableau")))
    ((language "Clojure") (ssgs ("Cryogen" "Perun")))
    ((language "Julia") (ssgs ("Franklin" "Documenter")))
    ((language "Racket") (ssgs ("Frog" "Pollen")))
    ((language "OCaml") (ssgs ("YOCaml")))
    ((language "F#") (ssgs ("Fornax")))
    ((language "Scala") (ssgs ("Laika" "ScalaTex")))
    ((language "Common Lisp") (ssgs ("Coleslaw")))
    ((language "Nim") (ssgs ("Nimrod" "Nimble-Publisher")))
    ((language "D") (ssgs ("Reggae")))
    ((language "Crystal") (ssgs ("Marmot")))
    ((language "Swift") (ssgs ("Publish")))
    ((language "Erlang") (ssgs ("Zotonic" "Wub")))
    ((language "Tcl") (ssgs ("StaticWebPages")))
    ((language "Babashka") (ssgs ("Babashka")))
    ((language "Kotlin") (ssgs ("Orchid"))))

  (what-this-is "Baremetal SSG adapters for 28+ static site generators")
  (what-this-is-not "- NOT exempt from RSR compliance"))
