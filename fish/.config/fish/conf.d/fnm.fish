
# fnm
set FNM_PATH "/home/lucastakeshi/.local/share/fnm"
if [ -d "$FNM_PATH" ]
    set PATH "$FNM_PATH" $PATH
    fnm env | source
end

# fnm
set FNM_PATH "/home/lucastakeshi/.local/share/fnm"
if [ -d "$FNM_PATH" ]
    set PATH "$FNM_PATH" $PATH
    fnm env | source
end

fnm env --use-on-cd --shell fish | source
