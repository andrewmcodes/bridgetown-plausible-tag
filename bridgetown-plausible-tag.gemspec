# frozen_string_literal: true

require_relative "lib/bridgetown-plausible-tag/version"

Gem::Specification.new do |spec|
  spec.name = "bridgetown-plausible-tag"
  spec.version = BridgetownPlausibleTag::VERSION
  spec.authors = ["Andrew Mason"]
  spec.email = ["andrewmcodes@protonmail.com"]

  spec.summary = "Plausible Analytics Plugin for Bridgetown"
  spec.description = <<-EOF
  A Liquid tag to add Plausible analytics to your site.
  EOF
  spec.homepage = "https://github.com/andrewmcodes/bridgetown-plausible-tag"
  spec.license = "MIT"

  spec.metadata = {
    "bug_tracker_uri" => "#{spec.homepage}/issues",
    "changelog_uri" => "#{spec.homepage}/blob/main/CHANGELOG.md",
    "documentation_uri" => spec.homepage.to_s,
    "homepage_uri" => spec.homepage.to_s,
    "source_code_uri" => spec.homepage.to_s
  }

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|script|spec|features|frontend)/}) }
  spec.test_files = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.5.0"

  spec.add_dependency "bridgetown", ">= 0.15", "< 2.0"

  spec.add_development_dependency "nokogiri", "~> 1.6"
end
