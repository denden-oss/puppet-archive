# Class: archive::staging
# =======================
#
# backwards compatibility class for staging module.
#
class voxpupuli_archive::staging (
  $path  = $voxpupuli_archive::params::path,
  $owner = $voxpupuli_archive::params::owner,
  $group = $voxpupuli_archive::params::group,
  $mode  = $voxpupuli_archive::params::mode,
) inherits voxpupuli_archive::params {
  include '::voxpupuli_archive'

  if !defined(File[$path]) {
    file { $path:
      ensure => directory,
      owner  => $owner,
      group  => $group,
      mode   => $mode,
    }
  }
}
