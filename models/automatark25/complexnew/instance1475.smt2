(declare-const X String)
; logsFictionalReporterCookieUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "logsFictionalReporterCookieUser-Agent:\u{a}"))))
; ^(\d{3}-\d{2}-\d{4})|(\d{3}\d{2}\d{4})$
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9")))))))
; Handyst=ClassStopperHost\u{3A}SpamBlockerUtility
(assert (str.in_re X (str.to_re "Handyst=ClassStopperHost:SpamBlockerUtility\u{a}")))
; presentsearch\.netLocalHost\u{3A}PORT\u{3D}WatchDogHost\u{3A}
(assert (not (str.in_re X (str.to_re "presentsearch.netLocalHost:PORT=WatchDogHost:\u{a}"))))
(check-sat)
