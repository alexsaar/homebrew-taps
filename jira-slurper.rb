require 'formula'

# Homebrew formula to install JIRA slurper
class JiraSlurper < Formula

    version "1.0.0"
    def release() "1" end   # custom release field

    homepage 'https://github.com/alexsaar/taps/wiki/JIRA-Slurper'
    url "https://github.com/alexsaar/taps/blob/master/slurp"
    sha1 'c2eb9e3e1aa46200c3474b8ce39245d0b073bd23'

    # dependencies
    depends_on "groovy"
    
    # Install
    def install
        # this is garbage
        puts "Cleaning up samples..."
        rm Dir["samples"]

        prefix.install_metafiles
        prefix.install Dir['*']
    end

    test do
        puts "version: #{version}-#{release}"
        %x[ jira ]
    end
end