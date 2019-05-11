# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth DNS Enumeration and Network Mapping"
  homepage "https://www.owasp.org/index.php/OWASP_Amass_Project"
  url "http://github.com/OWASP/Amass/releases/download/2.9.11/amass_2.9.11_macos_amd64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "2.9.11"
  sha256 "5a0d8b31ab59c7b23839b9062e05d6d46389689ee4fafcadfc36c7d7ec69f931"

  def install
    bin.install "amass"
    bin.install "amass.netdomains"
    bin.install "amass.viz"
    bin.install "amass.db"
    bin.install "amass.tracker"
  end
end
