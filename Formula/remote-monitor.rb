class RemoteMonitor < Formula
  desc "Terminal UI for monitoring a remote Linux host over SSH"
  homepage "https://github.com/LMLiam/remote-monitor"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.5/remote-monitor_0.1.5_darwin_arm64.tar.gz"
      sha256 "6a499eee726dacae6055782f019b9d1f261dbe9d2189e916bc1c6d2bdbedf9ff"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.5/remote-monitor_0.1.5_darwin_amd64.tar.gz"
      sha256 "942fdc8d49ef8d4174d6f9f6d8ad749556eb05e10580167f588a3548ddbdaa80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.5/remote-monitor_0.1.5_linux_arm64.tar.gz"
      sha256 "61486ad3b1ea28850b678cc5aa62dabeb915844ede8e5ea51631ada0cc44f0d6"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.1.5/remote-monitor_0.1.5_linux_amd64.tar.gz"
      sha256 "45ca513ff6eaa418afc749af4112c1136b50af1a68671dfff01f715f9f230ce5"
    end
  end

  def install
    bin.install "remote-monitor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/remote-monitor --version")
  end
end
