class RemoteMonitor < Formula
  desc "Terminal UI for monitoring a remote Linux host over SSH"
  homepage "https://github.com/LMLiam/remote-monitor"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.6/remote-monitor_0.1.6_darwin_arm64.tar.gz"
      sha256 "fb7ee1d0e45e5f3a7eb863f3fec5078d92d613f10b0a75d8d13538726cf47966"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.6/remote-monitor_0.1.6_darwin_amd64.tar.gz"
      sha256 "fa94fa6bd9c257317edcfe8836d395fb09ed77b437239bd4fa1482405618d858"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.6/remote-monitor_0.1.6_linux_arm64.tar.gz"
      sha256 "b895b668927ed36fdde722ad83f307815a340adf5710c1b3e1a3f1f72a63092f"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.6/remote-monitor_0.1.6_linux_amd64.tar.gz"
      sha256 "0c39e7e1a3d946bb1ac18c014774ee61e9a6385b09ffddd140deef83939c5545"
    end
  end

  def install
    bin.install "remote-monitor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/remote-monitor --version")
  end
end
