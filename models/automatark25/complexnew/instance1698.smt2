(declare-const X String)
; products\s+Host\u{3A}DAPCURLBlaze
(assert (str.in_re X (re.++ (str.to_re "products") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:DAPCURLBlaze\u{a}"))))
; SpyAgent\d+nick_name=CIA-Test\d+url=http\u{3A}HANDY\u{2F}NFO\u{2C}Registered
(assert (not (str.in_re X (re.++ (str.to_re "SpyAgent") (re.+ (re.range "0" "9")) (str.to_re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to_re "url=http:\u{1b}HANDY/NFO,Registered\u{a}")))))
; ([Cc][Hh][Aa][Nn][Dd][Aa][Nn].*?)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "H") (str.to_re "h")) (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "D") (str.to_re "d")) (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "N") (str.to_re "n")) (re.* re.allchar))))
; /filename=[^\n]*\u{2e}wma/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wma/i\u{a}")))))
(check-sat)
