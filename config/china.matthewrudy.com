<VirtualHost *>
  ServerName china.matthewrudy.com
  ServerAlias china-test.matthewrudy.com
  DocumentRoot /var/www/china/current/public
</VirtualHost>

