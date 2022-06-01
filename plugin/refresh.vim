fun! Source()
  lua for k in pairs(package.loaded) do if k:match("^psql") then package.loaded[k] = nil end end
endfun

fun! Setup()
  :call Source()
  lua require("psql").setup({})
endfun

fun! QueryCurrentLine()
  :call Source()
  lua require("psql").query_current_line()
endfun
