class RemoteMonitor < Formula
  desc "Terminal UI for monitoring a remote Linux host over SSH"
  homepage "https://github.com/LMLiam/remote-monitor"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.3.1/remote-monitor_0.3.1_darwin_arm64.tar.gz"
      sha256 "7cc04d7a21b388015619398cecf9a15a871b494d664921a81b1bc30aad784338"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.3.1/remote-monitor_0.3.1_darwin_amd64.tar.gz"
      sha256 "3e09d3e3d795c03171fdf4946f3d4154dcdc660b985ddfad9d111f1af8ab3a92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.3.1/remote-monitor_0.3.1_linux_arm64.tar.gz"
      sha256 "5086ac16a2b9e7658814c2e2846fe7181caa90a08c26a772f7b2bfaadbd5e254"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.3.1/remote-monitor_0.3.1_linux_amd64.tar.gz"
      sha256 "abf3c68f5c6ddface07cf98acf420e6dc6bc5d18b4a81ea505eb235c54dd5e13"
    end
  end

  def install
    bin.install "remote-monitor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/remote-monitor --version")
  end
end
