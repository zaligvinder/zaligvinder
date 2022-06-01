(declare-const X String)
; http[s]?://[a-zA-Z0-9.-/]+
(assert (str.in_re X (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (re.range "." "/"))) (str.to_re "\u{a}"))))
; /\u{2e}csv([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.csv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; Toolbarwww\u{2E}onlinecasinoextra\u{2E}com
(assert (str.in_re X (str.to_re "Toolbarwww.onlinecasinoextra.com\u{a}")))
; Host\u{3A}\s+Agentbody=\u{25}21\u{25}21\u{25}21Optix
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agentbody=%21%21%21Optix\u{13}\u{a}")))))
; com\u{2F}index\.php\?tpid=\u{7D}\u{7B}User\u{3A}
(assert (not (str.in_re X (str.to_re "com/index.php?tpid=}{User:\u{a}"))))
(check-sat)
