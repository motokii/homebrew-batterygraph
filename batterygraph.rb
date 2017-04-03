class Batterygraph < Formula
  desc "Display graph of MacBook battery"
  homepage "https://github.com/motokii/batterygraph"
  url "https://github.com/motokii/batterygraph/archive/v0.3.4.tar.gz"
  sha256 "2ab83a5e77d6828e36b009dce96002831474b7f053306cdfd1c7e77137c3dd96"
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
