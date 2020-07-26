node default{ 
$packages=['apache2','mysql-server']
$test="Apache2 and Mysql installed"
package{$packages:
ensure => installed,
}
file {'/tmp/status.txt':
content=>$test,
mode=>'0777',
}
}

