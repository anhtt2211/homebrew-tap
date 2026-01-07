class AudioText < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to transcribe YouTube videos to text for IELTS practice"
  homepage "https://github.com/anhtt2211/audio-text"
  url "https://files.pythonhosted.org/packages/source/a/audio-text/audio_text-0.1.0.tar.gz"
  sha256 "PLACEHOLDER_SHA256"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "python@3.11"

  resource "openai-whisper" do
    url "https://files.pythonhosted.org/packages/source/o/openai-whisper/openai-whisper-20231117.tar.gz"
    sha256 "PLACEHOLDER"
  end

  # Add other resources here after publishing to PyPI
  # Use: pip download audio-text --no-binary :all: -d /tmp/packages
  # Then generate resources with: poet audio-text

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "version", shell_output("#{bin}/audio-text --version")
  end
end
