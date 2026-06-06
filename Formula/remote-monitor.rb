class RemoteMonitor < Formula
  desc "Terminal UI for monitoring a remote Linux host over SSH"
  homepage "https://github.com/LMLiam/remote-monitor"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.2.2/remote-monitor_0.2.2_darwin_arm64.tar.gz"
      sha256 "890cfa6ff3eda08f3c708803e8e813fa92ad7c71c0a33581626c794f592d2b66"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.2.2/remote-monitor_0.2.2_darwin_amd64.tar.gz"
      sha256 "32b7476fa5247de6d01bd0a82476d89c130164d479346d4d5e6de9d29aae943a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.2.2/remote-monitor_0.2.2_linux_arm64.tar.gz"
      sha256 "2b8a2b725112e02a6b186edae70e47af16fab6d2e86d6720edb8c9e2dd35d9a7"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.2.2/remote-monitor_0.2.2_linux_amd64.tar.gz"
      sha256 "7209be03e2e59074b4ca54a18d84d91edd109140cd6db2b71a818b48d924e2af"
    end
  end

  def install
    bin.install "remote-monitor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/remote-monitor --version")
  end
end
