class RemoteMonitor < Formula
  desc "Terminal UI for monitoring a remote Linux host over SSH"
  homepage "https://github.com/LMLiam/remote-monitor"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.3/remote-monitor_0.1.3_darwin_arm64.tar.gz"
      sha256 "06433559f59deda2dc1d535109e06392ab47575546e5f4ccb16c9c6d734f24e8"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.3/remote-monitor_0.1.3_darwin_amd64.tar.gz"
      sha256 "da468467356fa1252ab17084e9ba622fed17914d1aadf591ddcddeddbcd744cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.3/remote-monitor_0.1.3_linux_arm64.tar.gz"
      sha256 "e5f165752c46881d9a53f475714aa11f4b87bd3d238368efd3b7c2ce4c521214"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.3/remote-monitor_0.1.3_linux_amd64.tar.gz"
      sha256 "15153a48f7a2197e7ff04f36ef68d59219d6fcdf6dad8d3b9c84e026fdb1c43b"
    end
  end

  def install
    bin.install "remote-monitor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/remote-monitor --version")
  end
end
