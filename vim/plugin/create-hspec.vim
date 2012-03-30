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
    execute 's/\<Spec\>/' . s:GetModuleName()

    " place cursor on first describe
    /describe
endfunction

" guess module name from file name
function s:GetModuleName()

    " strip extension
    let m = expand("%:r")

    " strip any none-uppercase prefix
    let m = substitute(m, '^\U*', '', '')

    " replace / with .
    return substitute(m, "/", ".", "g")
endfunction
