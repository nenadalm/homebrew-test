class Test < Formula
  desc "Testing formula"
  homepage "https://github.com/nenadalm/test"

  if OS.linux?
    url "https://github.com/nenadalm/test/releases/download/v2021.08.07.1659/test-linux-amd64"
    sha256 "8c8df878feb8c165ee2506d2aa2d4218c1c66eda6a76a9b3837d6a1f11226bfa"
  else
    raise "This OS is not supported."
  end

  bottle :unneeded

  def install
    bin.install "test-linux-amd64" => "nenadalm-test"
  end
end
