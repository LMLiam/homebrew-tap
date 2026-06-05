class RemoteMonitor < Formula
  desc "Terminal UI for monitoring a remote Linux host over SSH"
  homepage "https://github.com/LMLiam/remote-monitor"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.2.1/remote-monitor_0.2.1_darwin_arm64.tar.gz"
      sha256 "5203aa8020bdde3e56545e86876b579b9d67297a6fa16fdbed58b0414678fd70"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.2.1/remote-monitor_0.2.1_darwin_amd64.tar.gz"
      sha256 "f4d1775543af486ac4cde61d78d761fee7bb33634c3ff568e493fd18fd7b0825"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.2.1/remote-monitor_0.2.1_linux_arm64.tar.gz"
      sha256 "f901ddf3aead561e815317b35f26b32dee1cce13de38f6cca1e12b9559054a4c"
    end

    on_intel do
      url "https://github.com/LMLiam/remote-monitor/releases/download/v0.2.1/remote-monitor_0.2.1_linux_amd64.tar.gz"
      sha256 "11011f655638378909231430498132d2e096e2723a94c7547f0245ae6ad2e1b0"
    end
  end

  def install
    bin.install "remote-monitor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/remote-monitor --version")
  end
end
