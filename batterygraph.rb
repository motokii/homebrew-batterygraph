class Batterygraph < Formula
  desc "Display graph of MacBook battery"
  homepage "https://github.com/motokii/batterygraph"
  url "https://github.com/motokii/batterygraph/archive/v0.3.3.tar.gz"
  sha256 "16598ce30be3393faa590b6dca9938f75aa7552aaa1accbbcb235bf4b7744798"
  head "https://github.com/motokii/batterygraph.git"

  def install
    bin.install Dir["src/*"]
    zsh_completion.install "completion/_batterygraph"
  end

  test do
    system "#{bin}/batterygraph", "load"
    system "#{bin}/batterygraph", "write"
    system "#{bin}/batterygraph", "show"
  end
end
