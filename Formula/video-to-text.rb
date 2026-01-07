class VideoToText < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to transcribe YouTube videos to text for IELTS practice"
  homepage "https://github.com/anhtt2211/video-to-text"
  url "https://files.pythonhosted.org/packages/source/v/video-to-text/video_to_text-0.1.0.tar.gz"
  sha256 "PLACEHOLDER_SHA256"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "python@3.11"

  resource "openai-whisper" do
    url "https://files.pythonhosted.org/packages/source/o/openai-whisper/openai-whisper-20231117.tar.gz"
    sha256 "PLACEHOLDER"
  end

  # Add other resources here after publishing to PyPI
  # Use: pip download video-to-text --no-binary :all: -d /tmp/packages
  # Then generate resources with: poet video-to-text

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "version", shell_output("#{bin}/video-to-text --version")
  end
end
