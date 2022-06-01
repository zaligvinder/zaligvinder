(declare-const X String)
; Spy\-Locked\s+ExploiterSchwindler\u{2F}r\u{2F}keys\u{2F}keys
(assert (not (str.in_re X (re.++ (str.to_re "Spy-Locked") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ExploiterSchwindler/r/keys/keys\u{a}")))))
(check-sat)
