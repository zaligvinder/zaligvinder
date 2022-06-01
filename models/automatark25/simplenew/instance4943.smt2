(declare-const X String)
; SpyAgent\d+nick_name=CIA-Test\d+url=http\u{3A}HANDY\u{2F}NFO\u{2C}Registered
(assert (str.in_re X (re.++ (str.to_re "SpyAgent") (re.+ (re.range "0" "9")) (str.to_re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to_re "url=http:\u{1b}HANDY/NFO,Registered\u{a}"))))
(check-sat)
