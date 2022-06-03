lua require("psql")
fun! Source()
  lua for k in pairs(package.loaded) do if k:match("your-first-plugin") then package.loaded[k] = nil end end
endfun

:autocmd BufWritePost *.lua call Source()
