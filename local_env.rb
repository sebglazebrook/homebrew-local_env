# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class LocalEnv < Formula
  desc "Dependency management for my local environment"
  homepage "https://github.com/sebglazebrook/local_env_homebrew"
  url "https://github.com/sebglazebrook/local_env/raw/master/releases/0.1.0/local_env.sh.tar.gz"
  version "0.1.0"
  sha256 "ab8920884642469182c75a6bd02d950b79a9c475466b6e0277984debf2e89608"

  #depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    bin.install "local_env.sh"
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
                          #"--disable-dependency-tracking",
                          #"--disable-silent-rules",
                          #"--prefix=#{prefix}"
    ## system "cmake", ".", *std_cmake_args
    #system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test local_env`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
