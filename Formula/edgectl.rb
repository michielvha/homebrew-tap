# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Edgectl < Formula
  desc "A CLI for edge-cloud"
  homepage "https://github.com/michielvha/edgectl"
  version "0.3.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/michielvha/edgectl/releases/download/0.3.11/edgectl_0.3.11_darwin_amd64.zip"
      sha256 "8dd6c1358cc3dfb42a671294390ef0bd48373784bf090e607896421b7ee9555f"

      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/michielvha/edgectl/releases/download/0.3.11/edgectl_0.3.11_darwin_arm64.zip"
      sha256 "8dd6c1358cc3dfb42a671294390ef0bd48373784bf090e607896421b7ee9555f"

      def install
        bin.install "edgectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/michielvha/edgectl/releases/download/0.3.11/edgectl_0.3.11_linux_amd64.zip"
      sha256 "8dd6c1358cc3dfb42a671294390ef0bd48373784bf090e607896421b7ee9555f"
      def install
        bin.install "edgectl"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/michielvha/edgectl/releases/download/0.3.11/edgectl_0.3.11_linux_arm64.zip"
      sha256 "8dd6c1358cc3dfb42a671294390ef0bd48373784bf090e607896421b7ee9555f"
      def install
        bin.install "edgectl"
      end
    end
  end

  test do
    system "#{bin}/edgectl", "--version"
  end
end
