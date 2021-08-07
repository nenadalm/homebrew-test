class Test < Formula
  desc "Testing formula"
  homepage "https://github.com/nenadalm/test"
  version "2021.08.07.1729"

  if OS.linux?
    url "https://github.com/nenadalm/test/releases/download/v/test-linux-amd64"
    sha256 "044a87e70d0d0e5cfbd35ae4f86a036e26957ea8ec0e7b16b2735907beedf742"
  else
    raise "This OS is not supported."
  end

  bottle :unneeded

  def install
    bin.install "test-linux-amd64" => "nenadalm-test"
  end
end
