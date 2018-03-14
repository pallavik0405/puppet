class nokiaweb::webserver {

if $facts['os']['family']== "RedHat"{
	package { 'httpd':
  	ensure               => installed
	}
	service { 'httpd':
	ensure     => running
	}

$htmlcode = @(END)
<html>
<head>
<title>
This is my first module in Nokia
</title>
</head>
<body>
<h1> Welcome to scmgalaxy.com </h1>
</body>
</html>
END

file { '/var/www/html/index.html':
  ensure => present,
  content => $htmlcode
}

}
else{
         notify{'Hello world':}
}


}

