# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth Attack Surface Mapping and Asset Discovery"
  homepage "https://owasp.org/www-project-amass/"
  version "3.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OWASP/Amass/releases/download/v3.17.0/amass_macos_arm64.zip"
      sha256 "f2fed80e2bc2458dbfe1c53ca12727723092ca5db932a59e3d61f7493e02e630"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OWASP/Amass/releases/download/v3.17.0/amass_macos_amd64.zip"
      sha256 "23840873e0e2bbcc77130e0f66d78687170ab41fc43026bd20413d2130d1a6ae"

      def install
        bin.install "amass"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OWASP/Amass/releases/download/v3.17.0/amass_linux_arm64.zip"
      sha256 "3916c4117d7f12b98f223810ba24514decdf870f0c7e26fff39b927f3b451c45"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OWASP/Amass/releases/download/v3.17.0/amass_linux_arm.zip"
      sha256 "383b38d62af882bd1fcdf579f60646586aedb1477cb617e12104a995bd4895e1"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OWASP/Amass/releases/download/v3.17.0/amass_linux_amd64.zip"
      sha256 "e0b82eb596e55870e8162f9cd03712dab71173fb868d0d5b6dc58f7bc252d91d"

      def install
        bin.install "amass"
      end
    end
  end

  test do
    system "#{bin}/amass --version"
  end
end
