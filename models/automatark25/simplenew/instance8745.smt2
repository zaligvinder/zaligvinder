(declare-const X String)
; /\x00{7}\x55\x00{3}\x21.{4}[^\x00]*?[\x22\x27\x29\x3b]/
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 7 7) (str.to.re "\x00")) (str.to.re "U") ((_ re.loop 3 3) (str.to.re "\x00")) (str.to.re "!") ((_ re.loop 4 4) re.allchar) (re.* (re.comp (str.to.re "\x00"))) (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ")") (str.to.re ";")) (str.to.re "/\x0a"))))
(check-sat)
