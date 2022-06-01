(declare-const X String)
; /^Referer\u{3a}\u{20}http\u{3a}\u{2f}\u{2f}[^\n]+\/\d{10,20}\u{d}\u{a}/Hm
(assert (str.in_re X (re.++ (str.to_re "/Referer: http://") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re "/") ((_ re.loop 10 20) (re.range "0" "9")) (str.to_re "\u{d}\u{a}/Hm\u{a}"))))
(check-sat)
