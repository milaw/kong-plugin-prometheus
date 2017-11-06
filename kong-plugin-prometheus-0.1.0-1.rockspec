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
    ["kong.plugins."..pluginName..".handler"] = "/var/tmp/kong-plugin-"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "/var/tmp//kong-plugin-"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".api"] = "/var/tmp/kong-plugin-"..pluginName.."/api.lua",
    ["kong.plugins."..pluginName..".logger"] = "/var/tmp/kong-plugin-"..pluginName.."/logger.lua",
    ["kong.plugins."..pluginName..".prometheus"] = "/var/tmp/kong-plugin-"..pluginName.."/prometheus.lua",
  }
}
