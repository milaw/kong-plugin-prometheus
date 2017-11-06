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
    ["kong.plugins."..pluginName..".handler"] = "/usr/local/share/lua/5.1/kong/plugins/kong-plugin-"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "/usr/local/share/lua/5.1/kong/plugins/kong-plugin-"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".api"] = "/usr/local/share/lua/5.1/kong/plugins/kong-plugin-"..pluginName.."/api.lua",
    ["kong.plugins."..pluginName..".logger"] = "/usr/local/share/lua/5.1/kong/plugins/kong-plugin-"..pluginName.."/logger.lua",
    ["kong.plugins."..pluginName..".prometheus"] = "/usr/local/share/lua/5.1/kong/plugins/kong-plugin-"..pluginName.."/prometheus.lua",
  }
}
