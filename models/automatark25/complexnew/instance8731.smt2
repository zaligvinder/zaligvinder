(declare-const X String)
; /\/AES\d{9}O\d{4,5}\x2ejsp/Ui
(assert (str.in.re X (re.++ (str.to.re "//AES") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "O") ((_ re.loop 4 5) (re.range "0" "9")) (str.to.re ".jsp/Ui\x0a"))))
; \d{0,7}([\.|\,]\d{0,2})?
(assert (not (str.in.re X (re.++ ((_ re.loop 0 7) (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re "|") (str.to.re ",")) ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; HBand,\sHost\x3A[^\n\r]*lnzzlnbk\x2fpkrm\.fin
(assert (not (str.in.re X (re.++ (str.to.re "HBand,") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "lnzzlnbk/pkrm.fin\x0a")))))
(check-sat)
