(declare-const X String)
; (\w+?@\w+?\x2E.+)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") (re.+ re.allchar))))
; User-Agent\x3A\x2FrssMinutesansweras\x2Estarware\x2EcomFictionalHost\x3AHost\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:/rssMinutesansweras.starware.comFictionalHost:Host:\x0a"))))
; Xtra\s+Host\x3A\s+Referer\x3aThisSubject\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Xtra") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Referer:ThisSubject:\x0a")))))
; ^(\d{4}[- ]){3}\d{4}|\d{16}$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 16 16) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
