(declare-const X String)
; ^([012346789][0-9]{4})$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9")) ((_ re.loop 4 4) (re.range "0" "9"))))))
; Subject\u{3a}HostYWRtaW46cGFzc3dvcmQ
(assert (str.in_re X (str.to_re "Subject:HostYWRtaW46cGFzc3dvcmQ\u{a}")))
; /filename=[^\n]*\u{2e}bcl/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".bcl/i\u{a}")))))
; ^[^\u{0}-\u{1f}\u{21}-\u{26}\u{28}-\u{2d}\u{2f}-\u{40}\u{5b}-\u{60}\u{7b}-\u{ff}]+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "\u{0}" "\u{1f}") (re.range "!" "&") (re.range "(" "-") (re.range "/" "@") (re.range "[" "`") (re.range "{" "\u{ff}"))) (str.to_re "\u{a}")))))
; (AUX|PRN|NUL|COM\d|LPT\d)+\s*$
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "AUX") (str.to_re "PRN") (str.to_re "NUL") (re.++ (str.to_re "COM") (re.range "0" "9")) (re.++ (str.to_re "LPT") (re.range "0" "9")))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
(check-sat)
