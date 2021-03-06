require 'hammer_cli_katello'

module HammerCLISAM

  commands = %w(
    architecture
    capsule
    compute-resource
    content-view
    domain
    environment
    erratum
    fact
    global-parameter
    gpg
    host
    hostgroup
    lifecycle-environment
    location
    medium
    model
    os
    package
    package-group
    partition-table
    proxy
    puppet-class
    report
    sc-param
    subnet
    template
  )

  commands.each do |cmd|
    HammerCLI::MainCommand.remove_subcommand(cmd)
  end

  require 'hammer_cli_sam/content_host'
  require 'hammer_cli_sam/organization'
  require 'hammer_cli_sam/product'
  require 'hammer_cli_sam/repository'

end
