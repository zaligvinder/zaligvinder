(declare-const X String)
; ^(([1-9])|(0[1-9])|(1[0-2]))\/(([0-9])|([0-2][0-9])|(3[0-1]))\/(([0-9][0-9])|([1-2][0,9][0-9][0-9]))$
(assert (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "/") (re.union (re.range "0" "9") (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (str.to_re "/") (re.union (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.union (str.to_re "0") (str.to_re ",") (str.to_re "9")) (re.range "0" "9") (re.range "0" "9"))) (str.to_re "\u{a}"))))
; /\u{2e}pmd([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.pmd") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /filename=[a-z0-9]+\u{d}\u{a}/H
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "\u{d}\u{a}/H\u{a}")))))
; Activityfilename=\u{22}StarLoggerDAWeb-Mail
(assert (str.in_re X (str.to_re "Activityfilename=\u{22}StarLoggerDAWeb-Mail\u{a}")))
(check-sat)
