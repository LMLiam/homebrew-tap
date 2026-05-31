class RemoteMonitor < Formula
  desc "Terminal UI for monitoring a remote Linux host over SSH"
  homepage "https://github.com/LMLiam/remote-monitor"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.4/remote-monitor_0.1.4_darwin_arm64.tar.gz"
      sha256 "fbcf4cb9064496f2e7bfe3c85c4879f1b60ce31418388222856599d29496c408"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.4/remote-monitor_0.1.4_darwin_amd64.tar.gz"
      sha256 "5aa46b61c0fc770ad569bc0223af5116c064b7c6d5bc69f7fb9408b3f1437042"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.4/remote-monitor_0.1.4_linux_arm64.tar.gz"
      sha256 "cacd4cb979a940c2b186774b6b64e9120f89f5c89b5a50eaf1e2fd96da675d6e"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.4/remote-monitor_0.1.4_linux_amd64.tar.gz"
      sha256 "77297dc8f24a55e9827bd8d422c1f0d9f4732fe6daba91361ea0fd91aa77a693"
    end
  end

  def install
    bin.install "remote-monitor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/remote-monitor --version")
  end
end
