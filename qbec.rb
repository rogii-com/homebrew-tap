# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qbec < Formula
  desc "Qbec (pronounced like the Canadian province) is a CLI tool that allows you to create Kubernetes objects on multiple Kubernetes clusters or namespaces configured correctly for the target environment in question."
  homepage "https://qbec.io/"
  version "0.15.2-3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://rogii-sre-dist-pub.s3.amazonaws.com/qbec/qbec-0.15.2-3-darwin-arm64.tar.gz"
      sha256 "48554586ec4cfe89c1c6337a6895ecc6aafc74d496280f7b14a5a30e1e3b4708"

      def install
        bin.install ["qbec", "jsonnet-qbec"]
      end
    end
    if Hardware::CPU.intel?
      url "https://rogii-sre-dist-pub.s3.amazonaws.com/qbec/qbec-0.15.2-3-darwin-amd64.tar.gz"
      sha256 "d02a8ca290d8d85a25fe7d15e109029f4e0d92a4a67f951857a16afeaffbf5bc"

      def install
        bin.install ["qbec", "jsonnet-qbec"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://rogii-sre-dist-pub.s3.amazonaws.com/qbec/qbec-0.15.2-3-linux-arm64.tar.gz"
      sha256 "4feb8804d57c215e05d80a17b607819639bdba53fa79bb83af1a7b4670958d84"

      def install
        bin.install ["qbec", "jsonnet-qbec"]
      end
    end
    if Hardware::CPU.intel?
      url "https://rogii-sre-dist-pub.s3.amazonaws.com/qbec/qbec-0.15.2-3-linux-amd64.tar.gz"
      sha256 "e779774f729c3487248bb8e4e7f6a05e51ff11a843b36facf0fa4541bbc89bec"

      def install
        bin.install ["qbec", "jsonnet-qbec"]
      end
    end
  end

  test do
    system "#{bin}/qbec version"
  end
end
