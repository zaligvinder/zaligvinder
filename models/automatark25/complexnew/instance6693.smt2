(declare-const X String)
; www\u{2E}onlinecasinoextra\u{2E}comsearchreslt\u{7D}\u{7B}Sysuptime\u{3A}
(assert (str.in_re X (str.to_re "www.onlinecasinoextra.comsearchreslt}{Sysuptime:\u{a}")))
; /\/\?id=\d+\u{26}AnSSip=/Ui
(assert (str.in_re X (re.++ (str.to_re "//?id=") (re.+ (re.range "0" "9")) (str.to_re "&AnSSip=/Ui\u{a}"))))
; ^([0][1-9]|[1][0-2]):[0-5][0-9] {1}(AM|PM|am|pm)$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9") ((_ re.loop 1 1) (str.to_re " ")) (re.union (str.to_re "AM") (str.to_re "PM") (str.to_re "am") (str.to_re "pm")) (str.to_re "\u{a}"))))
; serverUSER-AttachedReferer\u{3A}youPointsUser-Agent\u{3A}Host\u{3a}
(assert (not (str.in_re X (str.to_re "serverUSER-AttachedReferer:youPointsUser-Agent:Host:\u{a}"))))
(check-sat)
