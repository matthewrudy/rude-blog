<VirtualHost *>
  ServerName china.matthewrudy.com
  ServerAlias china-test.matthewrudy.com
  DocumentRoot /var/www/china/current/public

  <Location /admin>
    AuthType Basic
    AuthName "matthewrudy-private"
    AuthUserFile /var/www/auth/matthewrudy-private
    Require user matthew
  </Location>
</VirtualHost>
