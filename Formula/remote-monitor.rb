class RemoteMonitor < Formula
  desc "Terminal UI for monitoring a remote Linux host over SSH"
  homepage "https://github.com/LMLiam/remote-monitor"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.2/remote-monitor_0.1.2_darwin_arm64.tar.gz"
      sha256 "d151cea49ea7a6d45cb9e954b0f84b6451f488578d250dbf08c5c566bf7b29ae"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.2/remote-monitor_0.1.2_darwin_amd64.tar.gz"
      sha256 "ce4666e1265dcfb43066d5e2f36699a6d8ab131fa49547af8f69a2074b5d4e13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.2/remote-monitor_0.1.2_linux_arm64.tar.gz"
      sha256 "72f47656b907504dbaba5efc1b2f4251d90d5f47e9ba4c91c8440ed8761a6491"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.2/remote-monitor_0.1.2_linux_amd64.tar.gz"
      sha256 "37303dd4c750bffb9d7d397f7729fd6651e9fa16ab7c2c80117abd15bf0a3341"
    end
  end

  def install
    bin.install "remote-monitor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/remote-monitor --version")
  end
end
