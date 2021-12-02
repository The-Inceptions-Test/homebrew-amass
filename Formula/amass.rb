# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Amass < Formula
  desc "In-depth Attack Surface Mapping and Asset Discovery"
  homepage "https://owasp.org/www-project-amass/"
  version "3.15.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OWASP/Amass/releases/download/v3.15.2/amass_macos_amd64.zip"
      sha256 "178d1a0932f073b891b8e6ec44e02e802ba9146ed0beaf373046fcd75666fd45"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/OWASP/Amass/releases/download/v3.15.2/amass_macos_arm64.zip"
      sha256 "6728456a90b766806b3b834f8ceeb7437130e8ba741715861083cf5196691672"

      def install
        bin.install "amass"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OWASP/Amass/releases/download/v3.15.2/amass_linux_amd64.zip"
      sha256 "4f209b60b17bf3a6d8384dc50d852f5b1b288ae1006a6890f49b4b684675929d"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OWASP/Amass/releases/download/v3.15.2/amass_linux_arm64.zip"
      sha256 "632cf85a91f5c64163c88c256eebe151a1f5eb20b97eda9b83327c54e3063528"

      def install
        bin.install "amass"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/OWASP/Amass/releases/download/v3.15.2/amass_linux_arm.zip"
      sha256 "cd85ab603e26926d46f1f6f52271a6771415509cbebf42141207331aaa1be800"

      def install
        bin.install "amass"
      end
    end
  end

  test do
    system "#{bin}/amass --version"
  end
end
