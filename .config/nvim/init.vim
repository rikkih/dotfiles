let g:config_files = ['plugins.vim', 'plugins-config.vim', 'options.vim']

for s:fname in g:config_files
    execute printf('source %s/core/%s', stdpath('config'), s:fname)
endfor
