### 3.0.0 / 2020-08-02

* Handle invalid DBF file (#37, rywall)
* Update DBF gem to version 4.x, bump minimum Ruby version to 2.4 (#38, alvir)

### 2.0.1 / 2019-04-01

* Check dbf record attributes / allow DBF file to have fewer records than SHX (#34, womanonrails / #28, marcisv)


### 2.0.0 / 2019-02-23

* Use .cpg file to specify the DBF encoding (#32, rywall)
* Remove :dbf_encoding option introduced in 1.2.0


### 1.2.0 / 2019-02-21

* Add ability to specify the DBF encoding (#30, rywall)


### 1.1.0 / 2018-11-30

* Allow rgeo 2.0 (#29, sunpoet)
* Require ruby 2.3+


### 1.0.0 / 2018-3-6

* Require rgeo 1.0 (#27)
* Freeze strings


### 0.4.2 / 2017-1-31

* Require ruby 2.1+
* Handle non-string path objects in Reader (#20, msimonborg)

### 0.4.1 / 2015-2-8

* Fix homepage in gemspec
* Do not distribute test files in gem

### 0.4.0 / 2015-2-5

* Require ruby 2.0

### 0.3.0 / 2014-07-01

* Require ruby 1.9.3+
* Moved into rgeo org on github.
* Update development environment to match other rgeo projects.

### 0.2.5 / unreleased

* The gemspec no longer includes the timestamp in the version, so that bundler can pull from github. (Reported by corneverbruggen)

### 0.2.4 / unreleased

* Fixed a few warnings
* Travis CI integration.

### 0.2.3 / 2012-01-09

* The dbf gem is now a hard dependency (now that it no longer pulls in ActiveSupport).
* Reader#initialize no longer tries to modify its parameters in place. (Reported by Brad Johnson.)
* DBF column reading should be more robust. (Possible fix for GH-4, reported by michael-groble.)
* Added an "rgeo-shapefile.rb" wrapper so bundler's auto-require will work without modification. (Reported by Mauricio Pasquier Juan.)

### 0.2.2 / 2011-04-11

* A .gemspec file is now available for gem building and bundler git integration.

### 0.2.1 / 2011-03-31

* The gem version is now accessible via an api.
* Attributes were each listed twice under slightly different names. Fixed. (Reported by spara.)

### 0.2.0 / 2010-12-07

* Initial public alpha release. Spun rgeo-shapefile off from the core rgeo gem.
* Removed the :default_factory option, for consistency with the other modules.
* Several reader methods didn't properly check if the file was still opened. Fixed.

For earlier history, see the History file for the rgeo gem.
