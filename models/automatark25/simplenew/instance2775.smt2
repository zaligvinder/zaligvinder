(declare-const X String)
; /^Host:\s*?[a-f0-9]{63,64}\./Him
(assert (str.in.re X (re.++ (str.to.re "/Host:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 63 64) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "./Him\x0a"))))
(check-sat)
