(declare-const X String)
; /<\s*col[^>]*width\s*=\s*[\x22\x27]?\d{7}/i
(assert (not (str.in.re X (re.++ (str.to.re "/<") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "col") (re.* (re.comp (str.to.re ">"))) (str.to.re "width") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "/i\x0a")))))
(check-sat)
