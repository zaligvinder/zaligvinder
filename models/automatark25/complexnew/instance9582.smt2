(declare-const X String)
; User-Agent\x3AHost\x3ATeomaBarHost\x3AHoursHost\x3A
(assert (str.in.re X (str.to.re "User-Agent:Host:TeomaBarHost:HoursHost:\x0a")))
; (^\d{3,5}\,\d{2}$)|(^\d{3,5}$)
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 3 5) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 3 5) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
