(declare-const X String)
; User-Agent\x3A3AHelpAgent\x3AHost\x3AsearchresltHost\x3Anotification
(assert (not (str.in.re X (str.to.re "User-Agent:3AHelpAgent:Host:searchresltHost:notification\x13\x0a"))))
; ^([a-z|A-Z]{1}[0-9]{3})[-]([0-9]{3})[-]([0-9]{2})[-]([0-9]{3})[-]([0-9]{1})
(assert (str.in.re X (re.++ (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a") ((_ re.loop 1 1) (re.union (re.range "a" "z") (str.to.re "|") (re.range "A" "Z"))) ((_ re.loop 3 3) (re.range "0" "9")))))
; /^POST\x20\x2fg[ao]lfstream\x26/
(assert (str.in.re X (re.++ (str.to.re "/POST /g") (re.union (str.to.re "a") (str.to.re "o")) (str.to.re "lfstream&/\x0a"))))
(check-sat)
