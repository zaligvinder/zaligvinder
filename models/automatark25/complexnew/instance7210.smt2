(declare-const X String)
; Host\x3a\w+Host\x3A.*Host\x3aToolbarServerserver\x7D\x7BSysuptime\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Host:ToolbarServerserver}{Sysuptime:\x0a")))))
; (NL-?)?[0-9]{9}B[0-9]{2}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "NL") (re.opt (str.to.re "-")))) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "B") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2em3u/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m3u/i\x0a"))))
(check-sat)
