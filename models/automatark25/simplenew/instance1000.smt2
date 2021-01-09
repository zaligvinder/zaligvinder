(declare-const X String)
; ^([^ \x21-\x26\x28-\x2C\x2E-\x40\x5B-\x60\x7B-\xAC\xAE-\xBF\xF7\xFE]+)$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (re.range "!" "&") (re.range "(" ",") (re.range "." "@") (re.range "[" "`") (re.range "{" "\xac") (re.range "\xae" "\xbf") (str.to.re "\xf7") (str.to.re "\xfe"))) (str.to.re "\x0a")))))
(check-sat)
