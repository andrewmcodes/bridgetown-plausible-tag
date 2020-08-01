<div align="center">
  <img alt="Banner" width="100%" src="media/banner.png" />
  <h1>bridgetown-plausible-tag</h1>
  <p>
    <a href="LICENSE" target="_blank">
      <img alt="License: MIT" src="https://img.shields.io/github/license/andrewmcodes/bridgetown-plausible-tag" />
    </a>
    <a href="https://badge.fury.io/rb/bridgetown-plausible-tag"><img src="https://badge.fury.io/rb/bridgetown-plausible-tag.svg" alt="Gem Version" height="18"></a>
    <!-- <a href="https://codeclimate.com/github/andrewmcodes/bridgetown-plausible-tag/maintainability"><img src="https://api.codeclimate.com/v1/badges/f9756d6568f43c7a407b/maintainability" /></a> -->
    <a href='https://coveralls.io/github/andrewmcodes/bridgetown-plausible-tag?branch=main'><img src='https://coveralls.io/repos/github/andrewmcodes/bridgetown-plausible-tag/badge.svg?branch=main' alt='Coverage Status' /></a>
    <img alt="Tests" src="https://github.com/andrewmcodes/bridgetown-plausible-tag/workflows/Tests/badge.svg" />
    <img alt="Linters" src="https://github.com/andrewmcodes/bridgetown-plausible-tag/workflows/Linters/badge.svg" />
    <img alt="Changelog" src="https://github.com/andrewmcodes/bridgetown-plausible-tag/workflows/Changelog/badge.svg" />
  </p>
</div>

- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [Demo](#demo)
- [Contributing](#contributing)
- [License](#license)

## Installation

Run this command to add this plugin to your site's Gemfile:

```shell
bundle add bridgetown-plausible-tag -g bridgetown_plugins
```

or add the following to your `Gemfile`:

```ruby
group :bridgetown_plugins do
  gem "bridgetown-plausible-tag", "~> 0.0.1"
end
```

## Configuration

```yml
# bridgetown.config.yml

plausible:
  # Your Plausible domain.
  # Note that this domain should not include www or https://
  #
  # Type: String
  # Required: true
  domain: example.com
```

## Usage

This plugin provides the `plausible` Liquid tag to your site.

Use the tag in the head of your document:

```liquid
{% plausible %}
```

[Refer to the Plausible Documentation for more information.](https://docs.plausible.io/plausible-script)

## Demo

[bridgetown-plausible-tag-starter](https://github.com/andrewmcodes/bridgetown-plausible-tag-starter)

This starter can be used to reproduce issues as well as provide an example of the plugin's usage.

## Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/andrewmcodes/bridgetown-plausible-tag/issues). You can also take a look at the [contributing guide](https://github.com/andrewmcodes/bridgetown-plausible-tag/blob/main/CONTRIBUTING.md).


## License

This plugin is released under the [MIT License](LICENSE).
