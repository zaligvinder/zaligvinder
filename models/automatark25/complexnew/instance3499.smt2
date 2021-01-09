(declare-const X String)
; User-Agent\x3AWeb-Mail
(assert (not (str.in.re X (str.to.re "User-Agent:Web-Mail\x0a"))))
; [0-9]{4}\s*[a-zA-Z]{2}
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
(check-sat)
