# puppet declarative script to grab puppet-lint
package { 'flask':
  ensure   => '21.0',
  provider => 'gem',
}
