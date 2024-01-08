cask "peekaboo" do
    version "2024.1.7.0"
    sha256 "b68137c707615b2d1ec5a836fa4825c3b92f300c1e022dbc35cf179b11a4c7af"

    url "https://github.com/apstygo/Peekaboo/releases/download/#{version}/Peekaboo.app.zip"
    name "Peekaboo"
    desc "An app that helps you find your cursor."
    homepage "https://github.com/apstygo/Peekaboo"

    livecheck do
        url :url
        strategy :github_latest
    end

    depends_on macos: ">= :mojave"

    app "Peekaboo.app"

    uninstall quit: "com.apstygo.Peekaboo"

    zap login_item: "Peekaboo", 
        trash: [
        "~/Library/Containers/com.apstygo.Peekaboo",
        "~/Library/Preferences/com.apstygo.Peekaboo.plist",
    ]
end
  