class Bytom < Formula
    desc "A digital asset layer protocol is the infrastructure of asset Internet."
    homepage 'https://bytom.io/'
    url 'https://github.com/bytom/bytom.git', :tag => 'v1.0.6rc1'

    devel do
      url 'https://github.com/bytom/bytom.git', :branch => 'dev'
    end
  
    # Require El Capitan at least
    depends_on :macos => :el_capitan
  
    # Is there a better way to ensure that frameworks (IOKit, CoreServices, etc) are installed?
    depends_on :xcode => :build
  
    depends_on 'go' => :build
  
    def install
      ENV["GOROOT"] = "#{HOMEBREW_PREFIX}/opt/go/libexec"
      system "go", "env" # Debug env
      system "make", "bytomd"
      system "make", "bytomcli"
      bin.install 'cmd/bytomd/bytomd'
      bin.install 'cmd/bytomd/bytomcli'
    end

    test do
        system "bytomcli", "version"
    end
  end