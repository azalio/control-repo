class profiles::base {
  include profiles::base::users
  include profiles::ntp::client
}
