(declare-const X String)
; cs\u{2E}shopperreports\u{2E}comActivityHost\u{3A}Yeah\!User-Agent\u{3A}Microsoft
(assert (not (str.in_re X (str.to_re "cs.shopperreports.comActivityHost:Yeah!User-Agent:Microsoft\u{a}"))))
; Subject\u{3a}.*Host\u{3a}.*\u{2F}products\u{2F}spyblocs\u{2F}\sinternalcyber@yahoo\u{2E}comHeadersRedirection
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "/products/spyblocs/\u{13}") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "internalcyber@yahoo.comHeadersRedirection\u{a}")))))
; /filename=[^\n]*\u{2e}pjpeg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pjpeg/i\u{a}"))))
; /filename=[^\n]*\u{2e}bak/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".bak/i\u{a}"))))
; /^USER\u{20}(XP|98|95|NT|ME|WIN|2K3)\u{2d}\d+\u{20}\u{2a}\u{20}\u{30}\u{20}\u{3a}/mi
(assert (str.in_re X (re.++ (str.to_re "/USER ") (re.union (str.to_re "XP") (str.to_re "98") (str.to_re "95") (str.to_re "NT") (str.to_re "ME") (str.to_re "WIN") (str.to_re "2K3")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " * 0 :/mi\u{a}"))))
(check-sat)
