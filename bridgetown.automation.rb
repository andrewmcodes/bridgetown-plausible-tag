say_status "Plausible", "Installing the bridgetown-plausible-tag plugin..."

domain_name = ask("What's your Plausible domain?")

add_bridgetown_plugin "bridgetown-plausible"

append_to_file "bridgetown.config.yml" do
  <<~YAML

    plausible:
      domain: #{domain_name}
  YAML
end
