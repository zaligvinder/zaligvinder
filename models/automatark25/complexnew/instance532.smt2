(declare-const X String)
; IndyHost\u{3A}GirlFriendReferer\u{3A}
(assert (str.in_re X (str.to_re "IndyHost:GirlFriendReferer:\u{a}")))
; /\/\d+\/\d\.zip\u{27}\u{3b}/
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "0" "9")) (str.to_re "/") (re.range "0" "9") (str.to_re ".zip';/\u{a}")))))
; \u{2F}rssaboutinformationHost\u{3A}\u{2F}ezsbu=DISKHost\u{3A}ad\u{2E}mokead\u{2E}com
(assert (str.in_re X (str.to_re "/rssaboutinformationHost:/ezsbu=DISKHost:ad.mokead.com\u{a}")))
; ver\d+sports\w+whenu\u{2E}comwp-includes\u{2F}feed\u{2E}php\u{3F}
(assert (not (str.in_re X (re.++ (str.to_re "ver") (re.+ (re.range "0" "9")) (str.to_re "sports") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "whenu.com\u{13}wp-includes/feed.php?\u{a}")))))
; ^(\$)?(([1-9]\d{0,2}(\,\d{3})*)|([1-9]\d*)|(0))(\.\d{2})?$
(assert (str.in_re X (re.++ (re.opt (str.to_re "$")) (re.union (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (str.to_re "0")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
