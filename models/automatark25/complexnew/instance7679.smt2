(declare-const X String)
; Host\x3A\w+User-Agent\x3A\sTeomaBarHost\x3AHoursHost\x3AHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "TeomaBarHost:HoursHost:Host:\x0a")))))
; /STOR fp[0-9A-F]{44}\x2ebin/
(assert (not (str.in.re X (re.++ (str.to.re "/STOR fp") ((_ re.loop 44 44) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re ".bin/\x0a")))))
; DATencentTravelerWebConnLibHost\x3A
(assert (not (str.in.re X (str.to.re "DATencentTravelerWebConnLibHost:\x0a"))))
; %3fSupremeSoftwareoffers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (str.to.re "%3fSupremeSoftwareoffers.bullseye-network.com\x0a")))
; (\b\w+\b)       # Match a word and capture it
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "       # Match a word and capture it\x0a")))))
(check-sat)
