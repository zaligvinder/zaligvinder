(declare-const X String)
; SpyAgent\d+nick_name=CIA-Test\d+url=http\u{3A}\d+\u{2F}NFO\u{2C}Registered\u{28}BDLL\u{29}
(assert (str.in_re X (re.++ (str.to_re "SpyAgent") (re.+ (re.range "0" "9")) (str.to_re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to_re "url=http:\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "/NFO,Registered(BDLL)\u{13}\u{a}"))))
; /^\u{2f}j\u{2f}[a-f0-9]{32}\u{2f}0001$/U
(assert (str.in_re X (re.++ (str.to_re "//j/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/0001/U\u{a}"))))
; wowokayoffers\u{2E}bullseye-network\u{2E}comRTB\u{D}\u{A}\u{D}\u{A}Attached
(assert (str.in_re X (str.to_re "wowokayoffers.bullseye-network.comRTB\u{d}\u{a}\u{d}\u{a}Attached\u{a}")))
; <[^>]*>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}")))))
(check-sat)
