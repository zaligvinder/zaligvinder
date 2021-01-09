(declare-const X String)
; <!--[\d\D]*?-->
(assert (str.in.re X (re.++ (str.to.re "<!--") (re.* (re.union (re.range "0" "9") (re.comp (re.range "0" "9")))) (str.to.re "-->\x0a"))))
; (\n\r)   replacement string---->\n
(assert (not (str.in.re X (str.to.re "\x0a\x0d   replacement string---->\x0a\x0a"))))
; Host\x3A\s+User-Agent\x3A\s+Host\x3ADesktopBlade
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:DesktopBlade\x0a")))))
(check-sat)
