(declare-const X String)
; (\s*\S*){2}(ipsum)(\S*\s*){2}
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))) (str.to.re "ipsum") ((_ re.loop 2 2) (re.++ (re.* (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ejnlp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jnlp/i\x0a"))))
; /\x2f[a-z0-9]+\.php\?php\x3dreceipt$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".php?php=receipt/Ui\x0a")))))
; cyber@yahoo\x2Ecom\s+Host\x3a\x7D\x7Crichfind\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "cyber@yahoo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:}|richfind.com\x0a"))))
(check-sat)
