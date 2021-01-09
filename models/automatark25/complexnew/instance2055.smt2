(declare-const X String)
; (<b>)([^<>]+)(</b>)
(assert (not (str.in.re X (re.++ (str.to.re "<b>") (re.+ (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re "</b>\x0a")))))
; User-Agent\x3A\s+community\d+
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "community") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; \\s\\d{2}[-]\\w{3}-\\d{4}
(assert (not (str.in.re X (re.++ (str.to.re "\x5cs\x5c") ((_ re.loop 2 2) (str.to.re "d")) (str.to.re "-\x5c") ((_ re.loop 3 3) (str.to.re "w")) (str.to.re "-\x5c") ((_ re.loop 4 4) (str.to.re "d")) (str.to.re "\x0a")))))
(check-sat)
