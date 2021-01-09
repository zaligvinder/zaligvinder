(declare-const X String)
; ^\.{0,2}[\/\\]
(assert (not (str.in.re X (re.++ ((_ re.loop 0 2) (str.to.re ".")) (re.union (str.to.re "/") (str.to.re "\x5c")) (str.to.re "\x0a")))))
; Host\x3A\s+lnzzlnbk\x2fpkrm\.fin
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "lnzzlnbk/pkrm.fin\x0a")))))
; /filename=[^\n]*\x2eotf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".otf/i\x0a"))))
(check-sat)
