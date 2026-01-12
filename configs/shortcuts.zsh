# Download YouTube videos as mp4
yt-dlmp4() {
  yt-dlp --merge-output-format mp4 --postprocessor-args "ffmpeg:-preset veryfast" "$@"
}
