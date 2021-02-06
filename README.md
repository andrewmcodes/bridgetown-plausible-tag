# PROJECT MOVED TO [btrb/bridgetown-plausible](https://github.com/bt-rb/bridgetown-plausible)

- [Introduction](#introduction)
- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [Demo](#demo)
- [Contributing](#contributing)
- [License](#license)

## Introduction

[Plausible](https://plausible.io) is a lightweight and open-source website analytics tool. It doesn’t use cookies and is fully compliant with GDPR, CCPA and PECR. This plugin is meant to remove all friction from adding your [Plausible Analytics tracking script code](https://docs.plausible.io/plausible-script) to your Bridgetown site.

The alternative to using this plugin is just pasting your Plausible tracking script code directly into the head of your document:

```html
<head>
  <!-- ... -->
  <script async defer data-domain="yourdomain.com" src="https://plausible.io/js/plausible.js"></script>
  <!-- ... -->
</head>
```

But if you use this plugin, all you need to do is define your [Plausible domain](https://docs.plausible.io/add-website) in your Bridgetown config file and paste this into your document head:

```html
<head>
  <!-- ... -->
  {% plausible %}
  <!-- ... -->
</head>
```

## Installation

If you're running Bridgetown v0.15 or later, you can install this plugin via an automation to guide you through the configuration:

```bash
bundle exec bridgetown apply https://github.com/andrewmcodes/bridgetown-plausible-tag
```

Otherwise, you can run this command to add this plugin to your site's Gemfile:

```shell
bundle add bridgetown-plausible-tag -g bridgetown_plugins
```

or add the following to your `Gemfile`:

```ruby
group :bridgetown_plugins do
  gem "bridgetown-plausible-tag", "~> 0.0.1"
end
```

Run `bundle install` and then modify your `bridgetown.config.yml` configuration to point to your Plausible domain.

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

[bridgetown-plausible-starter](https://github.com/andrewmcodes/bridgetown-plausible-starter)

This starter can be used to reproduce issues as well as provide an example of the plugin's usage.

You can view the live version at: [andrewmcodes.github.io/bridgetown-plausible-starter](https://andrewmcodes.github.io/bridgetown-plausible-starter/).

## Contributing

Contributions, issues and feature requests are welcome!<br />Feel free to check [issues page](https://github.com/andrewmcodes/bridgetown-plausible-tag/issues). You can also take a look at the [contributing guide](https://github.com/andrewmcodes/bridgetown-plausible-tag/blob/main/CONTRIBUTING.md).


## License

This plugin is released under the [MIT License](LICENSE).
