class Bytom < Formula
    desc "Official Go implementation of the Bytom protocol "
    homepage "https://bytom.io/"
    url "https://github.com/Bytom/bytom/releases/download/v1.0.10/bytom-1.0.10-darwin_amd64.tgz"
    version "1.0.10"
    sha256 "e840540126a105a9ac208820f9ba03ac5776632e793765ab63bfdc1ac1bc63f4"
  
    def install
        system 'mv bytomd-darwin_amd64 bytomd'
        system 'mv bytomcli-darwin_amd64 bytomcli'
        bin.install "bytomd"
        bin.install "bytomcli"
    end
  
    test do
      # `test do` will create, run in and delete a temporary directory.
      #
      # This test will fail and we won't accept that! For Homebrew/homebrew-core
      # this will need to be a test that verifies the functionality of the
      # software. Run the test with `brew test bytom`. Options passed
      # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
      #
      # The installed folder is not in the path, so use the entire path to any
      # executables being tested: `system "#{bin}/program", "do", "something"`.
      system "false"
    end
  end
  
