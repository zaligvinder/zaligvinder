(declare-const X String)
; /\x2emsi([\?\x5c\x2f]|$)/miU
(assert (not (str.in.re X (re.++ (str.to.re "/.msi") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/miU\x0a")))))
; ^[B|K|T|P][A-Z][0-9]{4}$
(assert (str.in.re X (re.++ (re.union (str.to.re "B") (str.to.re "|") (str.to.re "K") (str.to.re "T") (str.to.re "P")) (re.range "A" "Z") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; User-Agent\x3A[^\n\r]*quick\x2Eqsrch\x2Ecom.*www\.searchinweb\.com
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "quick.qsrch.com") (re.* re.allchar) (str.to.re "www.searchinweb.com\x0a")))))
; /filename=[^\n]*\x2evap/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vap/i\x0a")))))
; vbwwwc\.goclick\.compassword\x3B0\x3BIncorrect
(assert (not (str.in.re X (str.to.re "vbwwwc.goclick.compassword;0;Incorrect\x0a"))))
(check-sat)
