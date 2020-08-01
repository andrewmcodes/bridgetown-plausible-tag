require "spec_helper"
require "nokogiri"

describe(BridgetownPlausibleTag) do
  def read(file)
    File.read(dest_dir(file))
  end

  def parse(file)
    Nokogiri::HTML(read(file))
  end

  [
    Bridgetown.configuration({
      "plausible" => {"domain" => "example.com"},
      "full_rebuild" => true,
      "root_dir" => root_dir,
      "source" => source_dir,
      "destination" => dest_dir
    }),
    Bridgetown.configuration({
      "full_rebuild" => true,
      "root_dir" => root_dir,
      "source" => source_dir,
      "destination" => dest_dir
    })
  ].each do |config|
    (is_opt = config["plausible"]) && (config["plausible"]["domain"] == "example.com")

    context "Production" do
      describe "Integration - #{is_opt ? "with" : "without"} domain -" do
        before(:context) do
          ENV["BRIDGETOWN_ENV"] = "production"
          site = Bridgetown::Site.new(config)
          site.process
          @text = read("index.html")
          @data = parse("index.html")
          @base = @data.css("script").first
        end

        it "render site" do
          expect(File.exist?(dest_dir("index.html"))).to eq(true)
        end

        it "outputs Plausible tag" do
          data = @data.xpath("//script")
          expect(data).to be_truthy
          expect(data.first).to be_truthy
          expect(@base).to be_truthy
        end

        it "#{is_opt ? "does" : "does not"} interpolate Plausible domain" do
          expect(@base.get_attribute("data-domain")).to is_opt ? eql("example.com") : eql("NOT CONFIGURED")
        end
      end
    end

    context "Development" do
      describe "Integration - #{is_opt ? "with" : "without"} domain -" do
        before(:context) do
          ENV["BRIDGETOWN_ENV"] = "development"
          site = Bridgetown::Site.new(config)
          site.process
          @text = read("index.html")
          @data = parse("index.html")
        end

        it "render site" do
          expect(File.exist?(dest_dir("index.html"))).to eq(true)
        end

        it "outputs Plausible tag wrapped in a comment" do
          data = @data.xpath("//comment()")
          expect(@data.xpath("//script")).to be_empty
          expect(data).to be_truthy
          expect(data.first).to be_truthy
        end
      end
    end
  end
end
