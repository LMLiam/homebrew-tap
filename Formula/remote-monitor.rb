class RemoteMonitor < Formula
  desc "Terminal UI for monitoring a remote Linux host over SSH"
  homepage "https://github.com/LMLiam/remote-monitor"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.1/remote-monitor_0.1.1_darwin_arm64.tar.gz"
      sha256 "ff88088b010cc111945990ff8ca92d2b893d3278aedf9644c155dc046ca0df21"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.1/remote-monitor_0.1.1_darwin_amd64.tar.gz"
      sha256 "216a66a09cc6022d1ebcc2994b8434ed0b94b3f866442b93cf8c579b281dfd0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.1/remote-monitor_0.1.1_linux_arm64.tar.gz"
      sha256 "f251817918905af87f346aab03ff578604832f0ade0917a0a727abfc84aa90d2"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.1/remote-monitor_0.1.1_linux_amd64.tar.gz"
      sha256 "1f78313577f56d18b1531042d8ce93231c943a4d4f1526e0e9d9fb6772473f73"
    end
  end

  def install
    bin.install "remote-monitor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/remote-monitor --version")
  end
end
