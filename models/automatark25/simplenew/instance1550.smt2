(declare-const X String)
; /PRIVMSG #new :\u{2}\u{5b}(GOOGLE|SCAN)\u{5d}\u{2}\u{20}Scanning/
(assert (not (str.in_re X (re.++ (str.to_re "/PRIVMSG #new :\u{2}[") (re.union (str.to_re "GOOGLE") (str.to_re "SCAN")) (str.to_re "]\u{2} Scanning/\u{a}")))))
(check-sat)
