# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth DNS Enumeration and Network Mapping"
  homepage "https://www.owasp.org/index.php/OWASP_Amass_Project"
  version "3.0.9"

  if OS.mac?
    url "http://github.com/OWASP/Amass/releases/download/3.0.9/amass_3.0.9_macos_amd64.zip"
    sha256 "84f9a5fe2e66064cf35a08d062513a05d9e9020bc0ec3a92e185a0832a880270"
  elsif OS.linux?
    url "http://github.com/OWASP/Amass/releases/download/3.0.9/amass_3.0.9_macos_amd64.zip"
    sha256 "e2145db3e05fd98f29cb3f4c26f1a194a62bd418cccee4c4c80153dbdb59bef4"
  end

  def install
    bin.install "amass"
  end
end
