(declare-const X String)
; /\.jpg\u{20}HTTP\/1\.[01]\r\nUser\u{2d}Agent\u{3a}\u{20}[a-z]+\r\nHost\u{3a}\u{20}[a-z0-9\u{2d}\u{2e}]+\.com\.br\r\n\r\n$/
(assert (not (str.in_re X (re.++ (str.to_re "/.jpg HTTP/1.") (re.union (str.to_re "0") (str.to_re "1")) (str.to_re "\u{d}\u{a}User-Agent: ") (re.+ (re.range "a" "z")) (str.to_re "\u{d}\u{a}Host: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re ".com.br\u{d}\u{a}\u{d}\u{a}/\u{a}")))))
; /\u{a}Array\u{a}\u{28}\u{a}\u{20}{4}\u{5b}[a-z\d]{11}\u{5d}\u{20}\u{3d}\u{3e}\u{20}\d{16}\u{a}\u{29}/i
(assert (str.in_re X (re.++ (str.to_re "/\u{a}Array\u{a}(\u{a}") ((_ re.loop 4 4) (str.to_re " ")) (str.to_re "[") ((_ re.loop 11 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "] => ") ((_ re.loop 16 16) (re.range "0" "9")) (str.to_re "\u{a})/i\u{a}"))))
(check-sat)
