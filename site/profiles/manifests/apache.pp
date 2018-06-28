class profiles::apache () {
  include ::apache
  include ::apache::mod::php
  include ::apache::mod::cgi
  include ::apache::mod::userdir
  include ::apache::mod::disk_cache
}
