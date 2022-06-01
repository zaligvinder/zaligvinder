(declare-const X String)
; Handyst=ClassStopperHost\u{3A}SpamBlockerUtility
(assert (not (str.in_re X (str.to_re "Handyst=ClassStopperHost:SpamBlockerUtility\u{a}"))))
; User-Agent\u{3A}User-Agent\u{3A}Host\u{3A}SoftActivityYeah\!
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:Host:SoftActivity\u{13}Yeah!\u{a}")))
; ^\d+((\.|\,)\d+)?$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to_re ".") (str.to_re ",")) (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
; User-Agent\u{3A}User-Agent\u{3a}
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}"))))
; \u{2F}ta\u{2F}NEWS\u{2F}password\u{3B}1\u{3B}Optix
(assert (str.in_re X (str.to_re "/ta/NEWS/password;1;Optix\u{a}")))
(check-sat)
