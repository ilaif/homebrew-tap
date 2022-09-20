# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goplicate < Formula
  desc ""
  homepage "https://github.com/ilaif/goplicate"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ilaif/goplicate/releases/download/v0.1.4/goplicate_0.1.4_Darwin_arm64.tar.gz"
      sha256 "93655cda76541428ee90c2e9e2301088acc9909d3880171406a3c2fd83e025c5"

      def install
        bin.install "goplicate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ilaif/goplicate/releases/download/v0.1.4/goplicate_0.1.4_Darwin_x86_64.tar.gz"
      sha256 "36f19b712c7b23fc63e949ce37b101e7393d6c47ccfb154a4076f019e5e361a8"

      def install
        bin.install "goplicate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ilaif/goplicate/releases/download/v0.1.4/goplicate_0.1.4_Linux_arm64.tar.gz"
      sha256 "4eb5cc169c2084d04ff269617333062c3536cab1a78526bfc8779b87120de95d"

      def install
        bin.install "goplicate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ilaif/goplicate/releases/download/v0.1.4/goplicate_0.1.4_Linux_x86_64.tar.gz"
      sha256 "d3690abce9d563e9436c15c0fde964a125dd14480ca9ebb571a88d039a021220"

      def install
        bin.install "goplicate"
      end
    end
  end
end
