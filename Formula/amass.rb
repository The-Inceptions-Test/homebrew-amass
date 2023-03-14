# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth Attack Surface Mapping and Asset Discovery"
  homepage "https://owasp.org/www-project-amass/"
  version "3.22.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OWASP/Amass/releases/download/v3.22.1/amass_macos_arm64.zip"
      sha256 "30995a0eee6dda0cef60b94e666eae8ba42efd818217e7fcf798e8bc8d1e1e17"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OWASP/Amass/releases/download/v3.22.1/amass_macos_amd64.zip"
      sha256 "7025b5a567c2599dc85b9dc1ad4f5591d46a186f8fca1a8773a6452e238eba03"

      def install
        bin.install "amass"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OWASP/Amass/releases/download/v3.22.1/amass_linux_amd64.zip"
      sha256 "51033040fbc818f2b5fccb826fbd87b7c57f9599c6b8e48aa0f4bd1a397a09bb"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OWASP/Amass/releases/download/v3.22.1/amass_linux_arm64.zip"
      sha256 "ec945b53d3005194ef0710397f7179e57f7249012ce85ab47ee6b1519bc48d31"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OWASP/Amass/releases/download/v3.22.1/amass_linux_arm.zip"
      sha256 "e79c6e7acdccaefe648166249c67a7c53a9783940f51ea7d4bb2817d684cf12a"

      def install
        bin.install "amass"
      end
    end
  end

  test do
    system "#{bin}/amass --version"
  end
end
