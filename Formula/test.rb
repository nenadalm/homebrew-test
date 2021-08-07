class Test < Formula
  desc "Testing formula"
  homepage "https://github.com/nenadalm/test"
  version "2021.08.07.1737"

  if OS.linux?
    url "https://github.com/nenadalm/test/releases/download/v2021.08.07.1737/test-linux-amd64"
    sha256 "f3c4d9fbf6fd06ef45d28fae57af85d9d9662843feed55b9cbdf17db0c75d054"
  else
    raise "This OS is not supported."
  end

  bottle :unneeded

  def install
    bin.install "test-linux-amd64" => "nenadalm-test"
  end
end
