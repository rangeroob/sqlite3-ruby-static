Gem::Specification.new do |s|
  s.name = "sqlite3-static"
  s.version = "3.13.0"
  s.require_paths = ["lib"]
  s.authors = ["Jamis Buck", "Luis Lavena", "Aaron Patterson", "Jesús A. Álvarez"]
  s.date = "2016-05-19"
  s.description = "SQLite3 bindings with embedded SQLite library."
  s.email = ["jamis@37signals.com", "luislavena@gmail.com", "aaron@tenderlovemaking.com", "zydeco@namedfork.net"]
  s.extensions = ["ext/sqlite3/extconf.rb"]
  s.files = [
    "API_CHANGES.rdoc",
    "CHANGELOG.rdoc",
    "Manifest.txt",
    "README.rdoc",
    "ext/sqlite3/backup.c",
    "ext/sqlite3/backup.h",
    "ext/sqlite3/database.c",
    "ext/sqlite3/database.h",
    "ext/sqlite3/exception.c",
    "ext/sqlite3/exception.h",
    "ext/sqlite3/extconf.rb",
    "ext/sqlite3/sqlite3_core.c",
    "ext/sqlite3/sqlite3_ruby.h",
    "ext/sqlite3/sqlite3.c",
    "ext/sqlite3/sqlite3.h",
    "ext/sqlite3/statement.c",
    "ext/sqlite3/statement.h",
    "lib/sqlite3.rb",
    "lib/sqlite3/constants.rb",
    "lib/sqlite3/database.rb",
    "lib/sqlite3/errors.rb",
    "lib/sqlite3/pragmas.rb",
    "lib/sqlite3/resultset.rb",
    "lib/sqlite3/statement.rb",
    "lib/sqlite3/translator.rb",
    "lib/sqlite3/value.rb",
    "lib/sqlite3/version.rb"
  ]
  s.homepage = "https://github.com/Instabridge/sqlite3-ruby-static"
  s.licenses = ["BSD-3"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.summary = "SQLite3 bindings with embedded SQLite library, requiring no external dependencies."
end
