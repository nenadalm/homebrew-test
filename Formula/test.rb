class Test < Formula
  desc "Testing formula"
  homepage "https://github.com/nenadalm/test"

  if OS.linux?
    url "https://github.com/nenadalm/test/releases/download/v2021.06.23.2010/test-linux-amd64"
    sha256 "0e186e8e2e12d605f2d8a4638b57298b53163336fcb576dfffa2e4a28656ae3f"
  else
    raise "This OS is not supported."
  end

  bottle :unneeded

  def install
    bin.install "test-linux-amd64" => "nenadalm-test"
  end
end
