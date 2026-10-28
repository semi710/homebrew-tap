class Dragterm < Formula
  desc "Drag and drop files from the command line"
  homepage "https://github.com/semi710/dragterm"
  url "https://github.com/semi710/dragterm/releases/download/v1.1.2/drag-aarch64-darwin"
  sha256 "e018a2b041aaf8caf7d8874eec4edbb183d34f221775d3d741fe5ffc2ccf6224"
  license "MIT"

  on_intel do
    url "https://github.com/semi710/dragterm/releases/download/v1.1.2/drag-x86_64-darwin"
    sha256 "39a036f2ef75f7b1b8284781a4eba1fe88a0373fa72fa75da622d10b95b1d2af"
  end

  def install
    asset = Hardware::CPU.arm? ? "drag-aarch64-darwin" : "drag-x86_64-darwin"
    bin.install asset => "drag"
  end
end
