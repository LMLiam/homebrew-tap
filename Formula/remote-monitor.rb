class RemoteMonitor < Formula
  desc "Terminal UI for monitoring a remote Linux host over SSH"
  homepage "https://github.com/LMLiam/remote-monitor"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.2.0/remote-monitor_0.2.0_darwin_arm64.tar.gz"
      sha256 "0060458934999c2a3a6f1ebf903bf2f6b3f4548acda7104237012aeeb26beec9"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.2.0/remote-monitor_0.2.0_darwin_amd64.tar.gz"
      sha256 "d1be25d19b62de3037b9b3c588a8f2a9f1777cfeafaeff4f6cd81338a729958e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.2.0/remote-monitor_0.2.0_linux_arm64.tar.gz"
      sha256 "d89064cff9b1e00d6df022df5d5808c2ae7dc9f0820f9296fcc2e16ee62987f5"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.2.0/remote-monitor_0.2.0_linux_amd64.tar.gz"
      sha256 "8e29b9a3d2c37565661c78eba7eae052436f7f77551e05abb891261f61cc6969"
    end
  end

  def install
    bin.install "remote-monitor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/remote-monitor --version")
  end
end
