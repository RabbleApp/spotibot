Dir[File.expand_path("lib/*.rb")].each do |path|
  require_relative path
end