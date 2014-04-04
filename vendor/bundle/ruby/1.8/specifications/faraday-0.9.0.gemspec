# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{faraday}
  s.version = "0.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5") if s.respond_to? :required_rubygems_version=
  s.authors = ["Rick Olson"]
  s.date = %q{2014-01-16}
  s.email = %q{technoweenie@gmail.com}
  s.files = ["test/adapters/default_test.rb", "test/adapters/em_http_test.rb", "test/adapters/em_synchrony_test.rb", "test/adapters/excon_test.rb", "test/adapters/httpclient_test.rb", "test/adapters/integration.rb", "test/adapters/logger_test.rb", "test/adapters/net_http_persistent_test.rb", "test/adapters/net_http_test.rb", "test/adapters/patron_test.rb", "test/adapters/rack_test.rb", "test/adapters/test_middleware_test.rb", "test/adapters/typhoeus_test.rb", "test/authentication_middleware_test.rb", "test/composite_read_io_test.rb", "test/connection_test.rb", "test/env_test.rb", "test/helper.rb", "test/live_server.rb", "test/middleware/instrumentation_test.rb", "test/middleware/retry_test.rb", "test/middleware_stack_test.rb", "test/options_test.rb", "test/request_middleware_test.rb", "test/response_middleware_test.rb", "test/strawberry.rb", "test/utils_test.rb"]
  s.homepage = %q{https://github.com/lostisland/faraday}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{HTTP/REST API client library.}
  s.test_files = ["test/adapters/default_test.rb", "test/adapters/em_http_test.rb", "test/adapters/em_synchrony_test.rb", "test/adapters/excon_test.rb", "test/adapters/httpclient_test.rb", "test/adapters/integration.rb", "test/adapters/logger_test.rb", "test/adapters/net_http_persistent_test.rb", "test/adapters/net_http_test.rb", "test/adapters/patron_test.rb", "test/adapters/rack_test.rb", "test/adapters/test_middleware_test.rb", "test/adapters/typhoeus_test.rb", "test/authentication_middleware_test.rb", "test/composite_read_io_test.rb", "test/connection_test.rb", "test/env_test.rb", "test/helper.rb", "test/live_server.rb", "test/middleware/instrumentation_test.rb", "test/middleware/retry_test.rb", "test/middleware_stack_test.rb", "test/options_test.rb", "test/request_middleware_test.rb", "test/response_middleware_test.rb", "test/strawberry.rb", "test/utils_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multipart-post>, ["< 3", ">= 1.2"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<multipart-post>, ["< 3", ">= 1.2"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<multipart-post>, ["< 3", ">= 1.2"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
