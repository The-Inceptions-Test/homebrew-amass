# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth Attack Surface Mapping and Asset Discovery"
  homepage "https://owasp.org/www-project-amass/"
  version "3.12.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/OWASP/Amass/releases/download/v3.12.1/amass_macos_amd64.zip"
    sha256 "44fbccbb31d0f8fb49f9d2bac954283cb62c6ea34990bb648109e508bbb6b22d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/OWASP/Amass/releases/download/v3.12.1/amass_macos_arm64.zip"
    sha256 "43d848b8e7027c9705840f9c4e4662760c848856de8644d2e8ff3ef61215500c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/OWASP/Amass/releases/download/v3.12.1/amass_linux_amd64.zip"
    sha256 "228789610c65f70c011337975f30ff6541bfc67a51e7184c1d4c9a62f2a49b70"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/OWASP/Amass/releases/download/v3.12.1/amass_linux_arm.zip"
    sha256 "4485a3d82f3126c0825eb5af76d49e36f6828f0af9c5bf108e86d25bdabbb81e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/OWASP/Amass/releases/download/v3.12.1/amass_linux_arm64.zip"
    sha256 "7d372c49a2f08bad1bb87e7650f591326b9537b45bee81a658dee43ff6f0dea4"
  end

  def install
    bin.install "amass"
  end

  test do
    system "#{bin}/amass --version"
  end
end
