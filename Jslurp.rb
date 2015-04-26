require 'formula'

# Homebrew formula to install JIRA slurper
class JSlurp < Formula

    version "1.0.0"
    def release() "1" end   # custom release field

    homepage 'https://github.com/alexsaar/jslurp'
    url "https://raw.githubusercontent.com/alexsaar/jslurp/master/src/jslurp.groovy"
    sha1 'fd332c93a5b63fd3f032f6d998d0c2cf4e64694d'

    # dependencies
    depends_on "groovy"
    
    # Install
    def install
        # move to bin folder
        puts "Moving stuff to bin..."
        Dir.mkdir "bin"
        
        Dir['jslurp.groovy'].each { |f| mv f, "bin/#{f.gsub('.groovy', '')}" }
        
        prefix.install_metafiles
        prefix.install Dir['*']
    end
end