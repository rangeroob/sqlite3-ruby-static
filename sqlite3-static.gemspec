Gem::Specification.new do |s|
  s.name = "sqlite3-static"
  s.version = "3.12.1"
  s.require_paths = ["lib"]
  s.authors = ["Jamis Buck", "Luis Lavena", "Aaron Patterson", "Jesús A. Álvarez"]
  s.date = "2016-04-12"
  s.description = "SQLite3 bindings with embedded SQLite library."
  s.email = ["jamis@37signals.com", "luislavena@gmail.com", "aaron@tenderlovemaking.com", "zydeco@namedfork.net"]
  s.extensions = ["ext/sqlite3/extconf.rb"]
  s.files = ["API_CHANGES.rdoc", "CHANGELOG.rdoc", "Manifest.txt", "README.rdoc", "ext/sqlite3/backup.c", "ext/sqlite3/database.c", "ext/sqlite3/exception.c", "ext/sqlite3/extconf.rb", "ext/sqlite3/sqlite3.c", "ext/sqlite3/statement.c", "ext/sqlite3/sqlite3_core.c", "ext/sqlite3/sqlite3.h"]
  s.homepage = "https://github.com/Instabridge/sqlite3-ruby-static"
  s.licenses = ["BSD-3"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.summary = "SQLite3 bindings with embedded SQLite library, requiring no external dependencies."
end
