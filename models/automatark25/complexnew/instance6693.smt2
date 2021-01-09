(declare-const X String)
; www\x2Eonlinecasinoextra\x2Ecomsearchreslt\x7D\x7BSysuptime\x3A
(assert (str.in.re X (str.to.re "www.onlinecasinoextra.comsearchreslt}{Sysuptime:\x0a")))
; /\/\?id=\d+\x26AnSSip=/Ui
(assert (str.in.re X (re.++ (str.to.re "//?id=") (re.+ (re.range "0" "9")) (str.to.re "&AnSSip=/Ui\x0a"))))
; ^([0][1-9]|[1][0-2]):[0-5][0-9] {1}(AM|PM|am|pm)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") ((_ re.loop 1 1) (str.to.re " ")) (re.union (str.to.re "AM") (str.to.re "PM") (str.to.re "am") (str.to.re "pm")) (str.to.re "\x0a"))))
; serverUSER-AttachedReferer\x3AyouPointsUser-Agent\x3AHost\x3a
(assert (not (str.in.re X (str.to.re "serverUSER-AttachedReferer:youPointsUser-Agent:Host:\x0a"))))
(check-sat)
