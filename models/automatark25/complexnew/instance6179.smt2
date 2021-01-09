(declare-const X String)
; Host\x3A\s+User-Agent\x3A\s+Host\x3ADesktopBlade
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:DesktopBlade\x0a"))))
; (^\d{9}[V|v|x|X]$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 9 9) (re.range "0" "9")) (re.union (str.to.re "V") (str.to.re "|") (str.to.re "v") (str.to.re "x") (str.to.re "X")))))
(check-sat)
