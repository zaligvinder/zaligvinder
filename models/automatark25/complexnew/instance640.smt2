(declare-const X String)
; Iterenetbadurl\u{2E}grandstreetinteractive\u{2E}com
(assert (not (str.in_re X (str.to_re "Iterenetbadurl.grandstreetinteractive.com\u{a}"))))
; Host\u{3a}notificationwww\.thecommunicator\.net
(assert (str.in_re X (str.to_re "Host:notification\u{13}www.thecommunicator.net\u{a}")))
; ^[0-9]*\/{1}[1-9]{1}[0-9]*$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re "/")) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
