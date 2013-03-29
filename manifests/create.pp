# Define: locale::create
#
define locale::create() {
  
  @file_line { "locale_${title}":
    path => '/etc/locale.gen',
    line => $title,
  }
  
}
