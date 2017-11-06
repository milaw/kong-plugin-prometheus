package = "kong-plugin-prometheus"
version = "0.1.0-1"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/milaw/kong-plugin-prometheus",
  tag = "0.1.0"
}

description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "http://getkong.org",
  license = "MIT"
}

dependencies = {
}

local pluginName = "prometheus" 
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "schema.lua",
    ["kong.plugins."..pluginName..".api"] = "api.lua",
    ["kong.plugins."..pluginName..".logger"] = "logger.lua",
    ["kong.plugins."..pluginName..".prometheus"] = "prometheus.lua",
  }
}
