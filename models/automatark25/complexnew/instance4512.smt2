(declare-const X String)
; /\/modules\/(n?\d|nu)\.swf$/U
(assert (not (str.in.re X (re.++ (str.to.re "//modules/") (re.union (re.++ (re.opt (str.to.re "n")) (re.range "0" "9")) (str.to.re "nu")) (str.to.re ".swf/U\x0a")))))
; User-Agent\x3aHost\x3AHost\x3ASpyBuddy
(assert (not (str.in.re X (str.to.re "User-Agent:Host:Host:SpyBuddy\x0a"))))
(check-sat)
