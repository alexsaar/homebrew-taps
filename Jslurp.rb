require 'formula'

# Homebrew formula to install JIRA slurper
class Jslurp < Formula

  homepage 'https://github.com/alexsaar/jslurp'
  url "https://raw.githubusercontent.com/alexsaar/jslurp/master/src/jslurp.groovy"
  sha1 'fd332c93a5b63fd3f032f6d998d0c2cf4e64694d'
  version "1.0.0"
  
  depends_on "groovy"
    
  def install
    # move to bin folder
    Dir.mkdir "bin"
    Dir['jslurp.groovy'].each { |f| mv f, "bin/#{f.gsub('.groovy', '')}" }
        
    prefix.install_metafiles
    prefix.install Dir['*']
  end
end