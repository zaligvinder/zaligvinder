(declare-const X String)
; /filename=[^\n]*\u{2e}dvr-ms/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dvr-ms/i\u{a}")))))
; \u{2F}cs\u{2F}pop4\u{2F}A-Spywww\u{2E}yoogee\u{2E}com
(assert (str.in_re X (str.to_re "/cs/pop4/A-Spywww.yoogee.com\u{13}\u{a}")))
; e2give\.com\s+data2\.activshopper\.com
(assert (not (str.in_re X (re.++ (str.to_re "e2give.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "data2.activshopper.com\u{a}")))))
; RequestWindowszzzvmkituktgr\u{2f}etieencoder
(assert (str.in_re X (str.to_re "RequestWindowszzzvmkituktgr/etieencoder\u{a}")))
; ^((0?[1-9])|(([1|2]\d)|(3[0|1])))(/|-)((0?[1-9])|(1[0|1|2]))(/|-)(((19|20)\d\d)|(\d\d))
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "|") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "|") (str.to_re "1")))) (re.union (str.to_re "/") (str.to_re "-")) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "|") (str.to_re "1") (str.to_re "2")))) (re.union (str.to_re "/") (str.to_re "-")) (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)
