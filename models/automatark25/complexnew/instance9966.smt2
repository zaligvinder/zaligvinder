(declare-const X String)
; /#([1-9]){2}([1-9]){2}([1-9]){2}/
(assert (str.in_re X (re.++ (str.to_re "/#") ((_ re.loop 2 2) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "1" "9")) (str.to_re "/\u{a}"))))
; ^[a-zA-Z]{1,3}\[([0-9]{1,3})\]
(assert (not (str.in_re X (re.++ ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "[") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "]\u{a}")))))
; Host\u{3A}\s+\u{2F}toolbar\u{2F}ico\u{2F}\dencoderserverreport\<\u{2F}title\>
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/toolbar/ico/") (re.range "0" "9") (str.to_re "encoderserverreport</title>\u{a}")))))
; eveocczmthmmq\u{2f}omzl\d+Host\u{3A}ulmxct\u{2f}mqoyc
(assert (str.in_re X (re.++ (str.to_re "eveocczmthmmq/omzl") (re.+ (re.range "0" "9")) (str.to_re "Host:ulmxct/mqoyc\u{a}"))))
(check-sat)
