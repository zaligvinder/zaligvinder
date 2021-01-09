(declare-const X String)
; User-Agent\x3A3AHelpAgent\x3AHost\x3AsearchresltHost\x3Anotification
(assert (str.in.re X (str.to.re "User-Agent:3AHelpAgent:Host:searchresltHost:notification\x13\x0a")))
; /filename=[^\n]*\x2esln/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sln/i\x0a"))))
; ^([A-Z]{2}\s?(\d{2})?(-)?([A-Z]{1}|\d{1})?([A-Z]{1}|\d{1})?( )?(\d{4}))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.range "A" "Z")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (str.to.re "-")) (re.opt (re.union ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.opt (re.union ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.opt (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9")))))
; /\x2f[\w\x2d]*\x2e\x2e$/mU
(assert (str.in.re X (re.++ (str.to.re "//") (re.* (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "../mU\x0a"))))
(check-sat)
