module BridgetownPlausibleTag
  class Builder < Bridgetown::Builder
    #
    # Builds the tag
    #
    # @return [Set] <description>
    #
    def build
      liquid_tag "plausible", :render
    end

    #
    # Prepares and returns the SVG markup
    #
    # @param [String] _markup
    # @param [BridgetownInlineSvg::Tag] _builder
    # @return [String] The output HTML.
    #
    def render(_markup, _builder)
      domain = options.dig(:domain)&.strip

      tag = if domain
        script_tag(domain)
      else
        Bridgetown.logger.warn "Plausible Warning:", "Plausible domain not configured."
        script_tag("NOT CONFIGURED")
      end

      return wrap_with_comment(tag) if Bridgetown.environment == "development"

      tag
    end

    private

    #
    # Builds the script tag with the domain
    #
    # @param [String] domain
    #
    # @return [String] The script tag with domain interpolated.
    #
    def script_tag(domain)
      "<script async defer data-domain=\"#{domain}\" src=\"https://plausible.io/js/plausible.js\"></script>"
    end

    #
    # Wrap the input with an HTML comment
    #
    # @param [String] tag
    #
    # @return [String] The tag wrapped in an HTML comment
    #
    def wrap_with_comment(tag)
      "<!-- #{tag} -->"
    end

    #
    # Plugin options specified in Bridgetown config
    #
    # @return [Hash] configuration options. Ex:  {"optimize"=>true}
    #
    def options
      config["plausible"] || {}
    end
  end
end

BridgetownPlausibleTag::Builder.register
