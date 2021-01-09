(declare-const X String)
; /([^\x00-\xFF]\s*)/u
(assert (not (str.in.re X (re.++ (str.to.re "//u\x0a") (re.range "\x00" "\xff") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
(check-sat)
