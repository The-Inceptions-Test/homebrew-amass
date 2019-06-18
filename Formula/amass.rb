# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth DNS Enumeration and Network Mapping"
  homepage "https://www.owasp.org/index.php/OWASP_Amass_Project"
  version "3.0.5"

  if OS.mac?
    url "http://github.com/OWASP/Amass/releases/download/3.0.5/amass_3.0.5_macos_amd64.zip"
    sha256 "65d20b2eeb611382dfcf8fa3e29cbbb326ec1be3e5bf939aa02a26761727a794"
  elsif OS.linux?
    url "http://github.com/OWASP/Amass/releases/download/3.0.5/amass_3.0.5_macos_amd64.zip"
    sha256 "c1123effe3afd5cfd706b6a94770724d210194d5244cb2d27264fb7fca6cacb1"
  end

  def install
    bin.install "amass"
  end
end
