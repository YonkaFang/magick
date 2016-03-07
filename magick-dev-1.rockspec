package = "magick"
version = "dev-1"

source = {
  url = "git://github.com/YonkaFang/magick.git",
}

description = {
  summary = "Lua bindings to ImageMagick for LuaJIT using FFI forked from Leaf Corcoran <leafot@gmail.com>",
  license = "MIT",
  maintainer = "Yonka Fang <yonka.fang@foxmail.com>",
}

dependencies = {
  "lua == 5.1", -- how to do luajit?
}

build = {
  type = "builtin",
  modules = {
    ["magick"] = "magick/init.lua",
    ["magick.gmwand.lib"] = "magick/gmwand/lib.lua",
    ["magick.wand.data"] = "magick/wand/data.lua",
    ["magick.wand.lib"] = "magick/wand/lib.lua",
  }
}
