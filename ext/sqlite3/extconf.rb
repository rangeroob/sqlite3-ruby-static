ENV['RC_ARCHS'] = '' if RUBY_PLATFORM =~ /darwin/

require 'mkmf'

# :stopdoc:

RbConfig::MAKEFILE_CONFIG['CC'] = ENV['CC'] if ENV['CC']

if RbConfig::CONFIG["host_os"] =~ /mswin/
  $CFLAGS << ' -W3'
end

# enable column metadata
$CFLAGS << ' -DSQLITE_ENABLE_COLUMN_METADATA=1'

# Functions defined in 1.9 but not 1.8
have_func('rb_proc_arity')

# Functions defined in 2.1 but not 2.0
have_func('rb_integer_pack')

# These functions may not be defined
$defs.push(format("-DHAVE_%s", 'sqlite3_initialize'.tr_cpp))
$defs.push(format("-DHAVE_%s", 'sqlite3_backup_init'.tr_cpp))
$defs.push(format("-DHAVE_%s", 'sqlite3_column_database_name'.tr_cpp))
$defs.push(format("-DHAVE_%s", 'sqlite3_enable_load_extension'.tr_cpp))
$defs.push(format("-DHAVE_%s", 'sqlite3_load_extension'.tr_cpp))
$defs.push(format("-DHAVE_%s", 'sqlite3_open_v2'.tr_cpp))
$defs.push(format("-DHAVE_%s", 'sqlite3_prepare_v2'.tr_cpp))
$defs.push(format("-DHAVE_TYPE_%s", 'sqlite3_int64'.tr_cpp))
$defs.push(format("-DHAVE_TYPE_%s", 'sqlite3_uint64'.tr_cpp))

create_makefile('sqlite3/sqlite3_native')
