(declare-const X String)
; Host\u{3A}\s+www\u{2E}webfringe\u{2E}com\d+Version\d\u{2E}lSpywww\u{2E}lookquick\u{2E}comSubject\u{3A}\u{3a}\u{29}\r\n
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.webfringe.com") (re.+ (re.range "0" "9")) (str.to_re "Version") (re.range "0" "9") (str.to_re ".lSpywww.lookquick.comSubject::)\u{d}\u{a}\u{13}\u{a}")))))
; /\/14\d{8}(.jar)?$/U
(assert (str.in_re X (re.++ (str.to_re "//14") ((_ re.loop 8 8) (re.range "0" "9")) (re.opt (re.++ re.allchar (str.to_re "jar"))) (str.to_re "/U\u{a}"))))
(check-sat)
