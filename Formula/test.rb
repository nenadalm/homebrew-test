class Test < Formula
  desc "Testing formula"
  homepage "https://github.com/nenadalm/test"

  if OS.linux?
    url "https://github.com/nenadalm/test/releases/download/v2021.08.07.1715/test-linux-amd64"
    sha256 "030447c9d142fcb1de25cc3239363c41016be957e63ad82277bfb13c39d888f1"
  else
    raise "This OS is not supported."
  end

  bottle :unneeded

  def install
    bin.install "test-linux-amd64" => "nenadalm-test"
  end
end
