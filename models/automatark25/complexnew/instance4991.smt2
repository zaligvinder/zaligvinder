(declare-const X String)
; \swww\.fast-finder\.com\d+Toolbarwww\x2Eonlinecasinoextra\x2Ecom
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.com") (re.+ (re.range "0" "9")) (str.to.re "Toolbarwww.onlinecasinoextra.com\x0a")))))
; /^\s*?RCPT\s+?TO\x3a[^\r\n]*?\x28\x29\s\x7b/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "RCPT") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TO:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "()") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "{/i\x0a")))))
; /^\/\?[a-f0-9]{32}$/U
(assert (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
(check-sat)
