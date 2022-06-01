(declare-const X String)
; ^1[34][0-9][0-9]\/((1[0-2])|([1-9]))\/(([12][0-9])|(3[01])|[1-9])$
(assert (str.in_re X (re.++ (str.to_re "1") (re.union (str.to_re "3") (str.to_re "4")) (re.range "0" "9") (re.range "0" "9") (str.to_re "/") (re.union (re.++ (str.to_re "1") (re.range "0" "2")) (re.range "1" "9")) (str.to_re "/") (re.union (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))) (re.range "1" "9")) (str.to_re "\u{a}"))))
; Remote\u{3C}chat\u{3E}X-Mailer\u{3a}www\u{2e}proventactics\u{2e}com
(assert (str.in_re X (str.to_re "Remote<chat>\u{1b}X-Mailer:\u{13}www.proventactics.com\u{a}")))
; (-\d{1,} | \d{1,} | \d{1,}-\d{1,} | \d{1,}-)(,(-\d{1,} | \d{1,} | \d{1,}-\d{1,} | \d{1,}))*
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re "-"))) (re.* (re.++ (str.to_re ",") (re.union (re.++ (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re " ")) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")))))) (str.to_re "\u{a}"))))
; ^(www\.regxlib\.com)$
(assert (str.in_re X (str.to_re "www.regxlib.com\u{a}")))
(check-sat)
