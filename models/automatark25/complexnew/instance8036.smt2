(declare-const X String)
; /\u{2e}wpd([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.wpd") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; /filename=[\u{22}\u{27}]?[^\n]*\u{2e}pif[\u{22}\u{27}\s]/si
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pif") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/si\u{a}")))))
; Toolbarwww\u{2E}onlinecasinoextra\u{2E}com
(assert (str.in_re X (str.to_re "Toolbarwww.onlinecasinoextra.com\u{a}")))
; ^([1-9]([0-9])?)(\.(([0])?|([1-9])?|[1]([0-1])?)?)?$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re ".") (re.opt (re.union (re.opt (str.to_re "0")) (re.opt (re.range "1" "9")) (re.++ (str.to_re "1") (re.opt (re.range "0" "1"))))))) (str.to_re "\u{a}") (re.range "1" "9") (re.opt (re.range "0" "9"))))))
(check-sat)
