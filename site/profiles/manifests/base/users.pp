class profiles::base::users () 
{
  accounts::user { 'azalio':
    ensure => 'present',
    groups  => [
    'wheel',
    ],
    shell    => '/bin/bash',
    password => '!!',
    locked   => false,
    sshkeys => [
      'ssh-rsa AAAAB3NzaIwAAAQEA6syqO+hvKEIDlT40TwSlCJc91XNC2ugGpfdcX7LWsIBTXaFHiuHqbU/D8vJrYoZExBzCb/wbi1xnOw6hq3Dv1hwbiBXtaGBSFVEjQXJasD9EgH5F/nWbW+wFz2PLJaWJ8N/xcfCsAz/dPS4C/05ZBj6AKRn7B3QkOCzYJoQ55NCHiXeOT0a6cGFdyb9U5IaDEXoz8Rfe0jOxWIProwS9Qm4s6A6QH3tWiXnGo5Hqaig0rxYb9KGxZe9I+rfaKGJi7QMXk4Tl7Zpqy8jbixGP4kezW/fwJGNCdAu3ObqY8UNKPLEsReOju6JF+8lhmnGLPDW4JoQ== azalio@azalio-desktop',
    ],
  } 
}
