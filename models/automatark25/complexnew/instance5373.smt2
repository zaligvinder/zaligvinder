(declare-const X String)
; /^\/\d{10}\/\d{10}\.tpl$/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re ".tpl/U\u{a}"))))
; kl\u{2E}search\u{2E}need2find\u{2E}com\ssource%3Dultrasearch136%26campaign%3Dsnap
(assert (str.in_re X (re.++ (str.to_re "kl.search.need2find.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "source%3Dultrasearch136%26campaign%3Dsnap\u{a}"))))
; Subject\u{3A}\d+media\u{2E}dxcdirect\u{2E}com\.smx\?PASSW=SAHHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "media.dxcdirect.com.smx?PASSW=SAHHost:\u{a}")))))
; ^[AHJ-NPR-UW-Z]{2}\s?[0-9]{3}\s?[AHJ-NPR-UW-Z]{2}$
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.union (str.to_re "A") (str.to_re "H") (re.range "J" "N") (str.to_re "P") (re.range "R" "U") (re.range "W" "Z"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 2 2) (re.union (str.to_re "A") (str.to_re "H") (re.range "J" "N") (str.to_re "P") (re.range "R" "U") (re.range "W" "Z"))) (str.to_re "\u{a}"))))
; \u{2F}cs\u{2F}pop4\u{2F}A-Spywww\u{2E}yoogee\u{2E}com
(assert (not (str.in_re X (str.to_re "/cs/pop4/A-Spywww.yoogee.com\u{13}\u{a}"))))
(check-sat)
