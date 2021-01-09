(declare-const X String)
; /filename=[^\n]*\x2epdf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pdf/i\x0a")))))
; /\x3F[0-9a-z]{32}D/U
(assert (not (str.in.re X (re.++ (str.to.re "/?") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "D/U\x0a")))))
; engineResultUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "engineResultUser-Agent:\x0a"))))
; /\/stat_svc\/$/U
(assert (not (str.in.re X (str.to.re "//stat_svc//U\x0a"))))
; ^\[0-9]{4}\-\[0-9]{2}\-\[0-9]{2}$
(assert (str.in.re X (re.++ (str.to.re "[0-9") ((_ re.loop 4 4) (str.to.re "]")) (str.to.re "-[0-9") ((_ re.loop 2 2) (str.to.re "]")) (str.to.re "-[0-9") ((_ re.loop 2 2) (str.to.re "]")) (str.to.re "\x0a"))))
(check-sat)
