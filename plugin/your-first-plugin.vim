local plugin_name = "my-first-plugin"

lua require(plugin_name).setup({})

fun! Dump()
  lua for k in pairs(package.loaded) do if k:match(plugin_name) then package.loaded[k] = nil end end
endfun

fun! Reload()
  lua require(plugin_name).setup({})
endfun

:autocmd BufWritePost *.lua call Dump()
:autocmd BufWritePost *.lua call Reload()
