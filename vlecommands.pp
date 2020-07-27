node default{ 
$test="Apache2 is installed and Running"
$packages=['apache2','nginx']

package{$packages:
ensure=>installed,
}

exec{'Conditions':
command=> '/bin/echo "Apache is installed" > /tmp/software.txt',
onlyif=> '/bin/which apache2',
}

file{'/tmp/suresh.txt':
content=>$test,
mode=>'0777'
}
}
