# Class: locale
#
#
class locale {
  
  File_line <| path == '/etc/locale.gen' |> {
    notify => Exec["/usr/sbin/locale-gen"],
  }
  
  exec { "/usr/sbin/locale-gen":
    refreshonly => true,
  }
  
}
