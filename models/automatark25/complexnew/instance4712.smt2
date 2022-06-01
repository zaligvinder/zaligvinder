(declare-const X String)
; ^\d?\d'(\d|1[01])"$
(assert (str.in_re X (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9") (str.to_re "'") (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "\u{22}\u{a}"))))
; DesktopBladeclient=wwwHello\u{2E}xmlns\u{3A}
(assert (not (str.in_re X (str.to_re "DesktopBladeclient=wwwHello.xmlns:\u{a}"))))
; /^\/[a-z0-9]{32}\/[a-z0-9]{32}\.jnlp/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".jnlp/U\u{a}")))))
; User-Agent\u{3A}BetaWordixqshv\u{2f}qzccsServer\u{0}
(assert (str.in_re X (str.to_re "User-Agent:BetaWordixqshv/qzccsServer\u{0}\u{a}")))
(check-sat)
