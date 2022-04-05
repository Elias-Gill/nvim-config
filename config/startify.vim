" startify colors
hi VimWikiLink guifg=#978fff 
hi StartifySection guifg=#359dc2 
hi StartifyFile guifg=#FFFFFF 
hi StartifyHeader guifg=#ffffff

let g:startify_lists = [
    \ {'type': 'bookmarks', 'header': ['                              Projects']},
    \ {'type': 'sessions', 'header': ['                              Sessions']},
    \ {'type': 'files', 'header': ['                              Recent']},
    \]

let g:startify_bookmarks = [
    \'~/mastermind/desarrollo backend/',
    \'~/facultad/Algoritmos II/practicas/',
    \'~/facultad/Lenguajes de programacion/practicas_c/',
    \'~/mastermind/seguridad informatica/'
    \]

let g:startify_files_number = 3
let g:startify_padding_left= 32
let g:startify_session_persistence = 1
let g:startify_change_to_dir = 1
let g:startify_enable_special = 0

let g:ascii = [
            \' ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓   ',
            \' ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒   ',
            \' ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░  ', 
            \' ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██   ', 
            \' ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒  ', 
            \' ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░  ', 
            \' ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░  ', 
            \'    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░     ', 
            \'          ░    ░  ░    ░ ░        ░   ░         ░     ', 
            \'                                 ░                    ', 
            \]

let g:startify_custom_header = startify#center(g:ascii)

