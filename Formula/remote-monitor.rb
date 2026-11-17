class RemoteMonitor < Formula
  desc "Terminal UI for monitoring a remote Linux host over SSH"
  homepage "https://github.com/LMLiam/remote-monitor"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.3.2/remote-monitor_0.3.2_darwin_arm64.tar.gz"
      sha256 "d74b00a726047d9fcaa2d09aef378bc9782483844649dc9524f89d80a7f31682"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.3.2/remote-monitor_0.3.2_darwin_amd64.tar.gz"
      sha256 "0b93e84b15f688244016e98bbeca47e90efdc044575dd346855ad9c413a0e001"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.3.2/remote-monitor_0.3.2_linux_arm64.tar.gz"
      sha256 "ebc1b1f80fbbfd3b6409fa4d989ebcff98fc2771dd90fc957d9228ba0f3b1ae2"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.3.2/remote-monitor_0.3.2_linux_amd64.tar.gz"
      sha256 "445ea654fd6467e3379f2b3de35deb1529b84397f439f3076a292da8a0a557be"
    end
  end

  def install
    bin.install "remote-monitor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/remote-monitor --version")
  end
end
