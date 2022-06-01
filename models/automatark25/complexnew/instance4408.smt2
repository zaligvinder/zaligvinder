(declare-const X String)
; /Dr[.]?|Phd[.]?|MBA/i
(assert (str.in_re X (re.union (re.++ (str.to_re "/Dr") (re.opt (str.to_re "."))) (re.++ (str.to_re "Phd") (re.opt (str.to_re "."))) (str.to_re "MBA/i\u{a}"))))
; /filename=[^\n]*\u{2e}max/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".max/i\u{a}"))))
; (\d+)([,|.\d])*\d
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (str.to_re ",") (str.to_re "|") (str.to_re ".") (re.range "0" "9"))) (re.range "0" "9") (str.to_re "\u{a}")))))
; /\u{2e}wvx([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wvx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /^\/\d{4}\/\d{7}$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "/U\u{a}")))))
(check-sat)
