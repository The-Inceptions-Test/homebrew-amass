# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth Attack Surface Mapping and Asset Discovery"
  homepage "https://www.owasp.org/index.php/OWASP_Amass_Project"
  version "3.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/OWASP/Amass/releases/download/v3.2.0/amass_v3.2.0_macos_amd64.zip"
    sha256 "764f7da09458a54821b2051979166159222511bed86abef88af9b0c4fbd5ba66"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/OWASP/Amass/releases/download/v3.2.0/amass_v3.2.0_linux_amd64.zip"
      sha256 "14ebacb89ad7cfc277970a83d5a9f3266036fd8318c83a0045a4cc55d9c149a7"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/OWASP/Amass/releases/download/v3.2.0/amass_v3.2.0_linux_arm64.zip"
        sha256 "904fe1ee80a28bfd19447cea4dfb08f5e7f340173642be7bd01b41ace0db9b4b"
      else
        url "https://github.com/OWASP/Amass/releases/download/v3.2.0/amass_v3.2.0_linux_arm.zip"
        sha256 "853bff947650b63bcda57d5c44117587cab8ed3a0cf1c4dd48e5d16f9bb932c0"
      end
    end
  end

  def install
    bin.install "amass"
  end
end
