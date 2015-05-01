require 'formula'

# Homebrew formula to install JIRA slurper
class Jslurp < Formula

  homepage 'https://github.com/alexsaar/jslurp'
  url "https://raw.githubusercontent.com/alexsaar/jira-utils/v1.0.1/src/jslurp.groovy"
  sha1 '54a27134fb39477f789e5acfdc6bf53bea8ade2d'
  version "1.0.1"
  
  depends_on "groovy"
  
#  resource "additional_files" do
#    url "https://raw.githubusercontent.com/alexsaar/jira-utils/master/src/jlistcomp.groovy"
#    sha256 "77376408923e9008a4ff1cd83bc143caa3ef6bb3d756dbeba2cadcd41bbe5c6a"
#  end
    
  def install
    # move to bin folder
    Dir.mkdir "bin"
    Dir['jslurp.groovy'].each { |f| mv f, "bin/#{f.gsub('.groovy', '')}" }
    
#    resource("additional_files").stage { Dir['jlistcomp.groovy'].each { |f| mv f, "bin/#{f.gsub('.groovy', '')}" } }
    
    prefix.install_metafiles
    prefix.install Dir['*']
  end
end