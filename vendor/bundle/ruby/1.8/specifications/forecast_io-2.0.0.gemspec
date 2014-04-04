# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{forecast_io}
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Czarnecki"]
  s.date = %q{2013-07-05}
  s.description = %q{forecast.io API wrapper in Ruby}
  s.email = ["me@davidczarnecki.com"]
  s.files = ["spec/cassettes/.keep", "spec/cassettes/forecast_for_latitude_longitude.yml", "spec/cassettes/forecast_for_latitude_longitude_and_query_params.yml", "spec/cassettes/forecast_for_latitude_longitude_and_time.yml", "spec/forecast_io/configuration_spec.rb", "spec/forecast_io/forecast_io_spec.rb", "spec/forecast_io/version_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{https://github.com/darkskyapp/forecast-ruby}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{forecast_io}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{forecast.io API wrapper in Ruby}
  s.test_files = ["spec/cassettes/.keep", "spec/cassettes/forecast_for_latitude_longitude.yml", "spec/cassettes/forecast_for_latitude_longitude_and_query_params.yml", "spec/cassettes/forecast_for_latitude_longitude_and_time.yml", "spec/forecast_io/configuration_spec.rb", "spec/forecast_io/forecast_io_spec.rb", "spec/forecast_io/version_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, [">= 0"])
      s.add_runtime_dependency(%q<multi_json>, [">= 0"])
      s.add_runtime_dependency(%q<hashie>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<vcr>, [">= 0"])
      s.add_development_dependency(%q<typhoeus>, [">= 0"])
    else
      s.add_dependency(%q<faraday>, [">= 0"])
      s.add_dependency(%q<multi_json>, [">= 0"])
      s.add_dependency(%q<hashie>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<vcr>, [">= 0"])
      s.add_dependency(%q<typhoeus>, [">= 0"])
    end
  else
    s.add_dependency(%q<faraday>, [">= 0"])
    s.add_dependency(%q<multi_json>, [">= 0"])
    s.add_dependency(%q<hashie>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<vcr>, [">= 0"])
    s.add_dependency(%q<typhoeus>, [">= 0"])
  end
end
