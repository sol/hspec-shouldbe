" vim: set ts=4 sw=4 et:

" Start new specs from a template.
au BufNewFile *Spec.hs call s:CreateSpecTemplate()

let s:template = expand("<sfile>:h") . "/../../example/Spec.hs"

function s:CreateSpecTemplate()

    " read template
    let input = readfile(s:template)
    call append(0, input)

    " append leaves an empty line at the end of the file, remove it
    d

    " adapt module name
    0
    execute 's/\<Spec\>/' . expand("%:t:r")

    " place cursor on first describe
    /describe
endfunction
