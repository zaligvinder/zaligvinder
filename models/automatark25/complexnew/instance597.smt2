(declare-const X String)
; HTTPwwwProbnymomspyo\x2fzowy
(assert (not (str.in.re X (str.to.re "HTTPwwwProbnymomspyo/zowy\x0a"))))
; ^[A-Z]{3}-[0-9]{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; Keystrokes.*LOG.*Host\x3Awww\x2Eserverlogic3\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Keystrokes") (re.* re.allchar) (str.to.re "LOG") (re.* re.allchar) (str.to.re "Host:www.serverlogic3.com\x0a"))))
(check-sat)
