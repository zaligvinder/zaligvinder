(declare-const X String)
; ^\d?\d'(\d|1[01])"$
(assert (str.in.re X (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9") (str.to.re "'") (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x22\x0a"))))
; DesktopBladeclient=wwwHello\x2Exmlns\x3A
(assert (not (str.in.re X (str.to.re "DesktopBladeclient=wwwHello.xmlns:\x0a"))))
; /^\/[a-z0-9]{32}\/[a-z0-9]{32}\.jnlp/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jnlp/U\x0a")))))
; User-Agent\x3ABetaWordixqshv\x2fqzccsServer\x00
(assert (str.in.re X (str.to.re "User-Agent:BetaWordixqshv/qzccsServer\x00\x0a")))
(check-sat)
