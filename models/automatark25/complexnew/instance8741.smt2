(declare-const X String)
; ^([0-9a-f]{4}\.[0-9a-f]{4}\.[0-9a-f]{4})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re ".") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re ".") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))))))
; /\x2ewmx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.wmx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; EFError\swww\x2emalware-stopper\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "EFError") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.malware-stopper.com\x0a")))))
(check-sat)
