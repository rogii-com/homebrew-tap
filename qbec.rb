# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qbec < Formula
  desc "Qbec (pronounced like the Canadian province) is a CLI tool that allows you to create Kubernetes objects on multiple Kubernetes clusters or namespaces configured correctly for the target environment in question."
  homepage "https://qbec.io/"
  version "0.15.2-1-rogii"

  on_macos do
    if Hardware::CPU.arm?
      url "https://rogii-sre-dist-pub.s3.amazonaws.com/qbec/qbec-0.15.2-1-rogii-darwin-arm64.tar.gz"
      sha256 "bdf997f02ff899c07bcba5ce5b16e294d70b5989f131f8817f46e6d536b7bdb4"

      def install
        bin.install ["qbec", "jsonnet-qbec"]
      end
    end
    if Hardware::CPU.intel?
      url "https://rogii-sre-dist-pub.s3.amazonaws.com/qbec/qbec-0.15.2-1-rogii-darwin-amd64.tar.gz"
      sha256 "a0817aa9646efe7d25b52d25932d6ddd8dd6355132a0c97af4ed85d0c0725577"

      def install
        bin.install ["qbec", "jsonnet-qbec"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://rogii-sre-dist-pub.s3.amazonaws.com/qbec/qbec-0.15.2-1-rogii-linux-arm64.tar.gz"
      sha256 "1163861d061f23fa6a090ed9cbaf2f2200fe2004b5942014e3ae1975a185844e"

      def install
        bin.install ["qbec", "jsonnet-qbec"]
      end
    end
    if Hardware::CPU.intel?
      url "https://rogii-sre-dist-pub.s3.amazonaws.com/qbec/qbec-0.15.2-1-rogii-linux-amd64.tar.gz"
      sha256 "838ccd66cb03eb4d40559743667094a8d36b0290c05b895534f286b8b27c6df0"

      def install
        bin.install ["qbec", "jsonnet-qbec"]
      end
    end
  end

  test do
    system "#{bin}/qbec version"
  end
end
