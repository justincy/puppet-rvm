class rvm::dependencies::ubuntu {

  exec { "apt_update":
    command => "apt-get update",
    path    => "/usr/bin"
  }

  if ! defined(Package['build-essential'])      { package { 'build-essential':      ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['bison'])                { package { 'bison':                ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['openssl'])              { package { 'openssl':              ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['libreadline6'])         { package { 'libreadline6':         ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['libreadline6-dev'])     { package { 'libreadline6-dev':     ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['curl'])                 { package { 'curl':                 ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['git-core'])             { package { 'git-core':             ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['zlib1g'])               { package { 'zlib1g':               ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['zlib1g-dev'])           { package { 'zlib1g-dev':           ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['libssl-dev'])           { package { 'libssl-dev':           ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['libyaml-dev'])          { package { 'libyaml-dev':          ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['libsqlite3-0'])         { package { 'libsqlite3-0':         ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['libsqlite3-dev'])       { package { 'libsqlite3-dev':       ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['sqlite3'])              { package { 'sqlite3':              ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['libxml2-dev'])          { package { 'libxml2-dev':          ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['libxslt1-dev'])         { package { 'libxslt1-dev':         ensure => present, require => Exec['apt_update'], alias => 'libxslt-dev' } }
  if ! defined(Package['autoconf'])             { package { 'autoconf':             ensure => present, require => Exec['apt_update'] } }
  if ! defined(Package['libc6-dev'])            { package { 'libc6-dev':            ensure => present, require => Exec['apt_update'] } }

}
