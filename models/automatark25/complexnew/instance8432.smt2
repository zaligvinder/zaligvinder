(declare-const X String)
; /filename=[^\n]*\x2emaplet/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".maplet/i\x0a"))))
; (^\d*\.\d{2}$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))
; X-Spam-Level:\s[*]{11}
(assert (str.in.re X (re.++ (str.to.re "X-Spam-Level:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 11 11) (str.to.re "*")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2esmi/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smi/i\x0a")))))
(check-sat)
