# frozen_string_literal: true

module StudyMode
  class SiteBlocker
    SITE_BLOCKS = "# Block Facebook IPv4
127.0.0.1   www.facebook.com
127.0.0.1   facebook.com
127.0.0.1   login.facebook.com
127.0.0.1   www.login.facebook.com
127.0.0.1   fbcdn.net
127.0.0.1   www.fbcdn.net
127.0.0.1   fbcdn.com
127.0.0.1   www.fbcdn.com
127.0.0.1   static.ak.fbcdn.net
127.0.0.1   static.ak.connect.facebook.com
127.0.0.1   connect.facebook.net
127.0.0.1   www.connect.facebook.net

# Block Twitter
127.0.0.1 www.twitter.com
127.0.0.1 twitter.com
127.0.0.1   apps.facebook.com

# Block Facebook IPv6
fe80::1%lo0 facebook.com
fe80::1%lo0 login.facebook.com
fe80::1%lo0 www.login.facebook.com
fe80::1%lo0 fbcdn.net
fe80::1%lo0 www.fbcdn.net
fe80::1%lo0 fbcdn.com
fe80::1%lo0 www.fbcdn.com
fe80::1%lo0 static.ak.fbcdn.net
fe80::1%lo0 static.ak.connect.facebook.com
fe80::1%lo0 connect.facebook.net
fe80::1%lo0 www.connect.facebook.net
fe80::1%lo0 apps.facebook.com"

    def block
      File.open("/etc/hosts", "a") do |file|
        file << SITE_BLOCKS
      end
    end
  end
end
