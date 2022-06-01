(declare-const X String)
; nick_name=CIA-Test\d+url=http\u{3A}\d+\u{2F}NFO\u{2C}Registered\u{28}BDLL\u{29}
(assert (str.in_re X (re.++ (str.to_re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to_re "url=http:\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "/NFO,Registered(BDLL)\u{13}\u{a}"))))
(check-sat)
