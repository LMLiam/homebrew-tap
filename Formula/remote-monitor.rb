class RemoteMonitor < Formula
  desc "Terminal UI for monitoring a remote Linux host over SSH"
  homepage "https://github.com/LMLiam/remote-monitor"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.3.0/remote-monitor_0.3.0_darwin_arm64.tar.gz"
      sha256 "7f2040c11d11a3b450472010a33902d45687de6113461c76453a1b7f1bb8f346"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.3.0/remote-monitor_0.3.0_darwin_amd64.tar.gz"
      sha256 "2992856e1c8f24624ccdee063f23bbcd0112a6f757858a89ed365fa7843a47e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.3.0/remote-monitor_0.3.0_linux_arm64.tar.gz"
      sha256 "e51f32de6a70dc4681de3456fe0fd3c3b99fbe52de653eec03a760b085c91f53"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.3.0/remote-monitor_0.3.0_linux_amd64.tar.gz"
      sha256 "38e4d8bd43876a53b19bcc07ac7bd7fe65db26d32a7915c6ec6734a0e7237cb5"
    end
  end

  def install
    bin.install "remote-monitor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/remote-monitor --version")
  end
end
