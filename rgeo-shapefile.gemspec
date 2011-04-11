::Gem::Specification.new do |s_|
  s_.name = 'rgeo-shapefile'
  s_.summary = 'An RGeo module for reading ESRI shapefiles.'
  s_.description = "RGeo is a geospatial data library for Ruby. RGeo::Shapefile is an optional RGeo module for reading the ESRI shapefile format, a common file format for geospatial datasets."
  s_.version = "#{::File.read('Version').strip}.build#{::Time.now.utc.strftime('%Y%m%d%H%M%S')}"
  s_.author = 'Daniel Azuma'
  s_.email = 'dazuma@gmail.com'
  s_.homepage = "http://virtuoso.rubyforge.org/rgeo-shapefile"
  s_.rubyforge_project = 'virtuoso'
  s_.required_ruby_version = '>= 1.8.7'
  s_.files = ::Dir.glob("lib/**/*.rb") +
    ::Dir.glob("test/**/*.{rb,txt,shp,shx,dbf}") +
    ::Dir.glob("*.rdoc") +
    ['Version']
  s_.extra_rdoc_files = ::Dir.glob("*.rdoc")
  s_.test_files = ::Dir.glob("test/**/tc_*.rb")
  s_.platform = ::Gem::Platform::RUBY
  s_.add_dependency('rgeo', '>= 0.2.8')
  s_.add_development_dependency('dbf', '>= 1.5.2')
end
