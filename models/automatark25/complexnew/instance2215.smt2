(declare-const X String)
; User-Agent\u{3A}www\u{2E}myarmory\u{2E}comHost\u{3A}User-Agent\u{3a}Host\u{3A}portAuthorization\u{3a}\u{2F}newsurfer4\u{2F}
(assert (str.in_re X (str.to_re "User-Agent:www.myarmory.comHost:User-Agent:Host:portAuthorization:/newsurfer4/\u{a}")))
; Handyst=ClassStopperHost\u{3A}SpamBlockerUtility
(assert (str.in_re X (str.to_re "Handyst=ClassStopperHost:SpamBlockerUtility\u{a}")))
; ^((\\{2}\w+)\$?)((\\{1}\w+)*$)
(assert (str.in_re X (re.++ (re.* (re.++ ((_ re.loop 1 1) (str.to_re "\u{5c}")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{a}") (re.opt (str.to_re "$")) ((_ re.loop 2 2) (str.to_re "\u{5c}")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))))
(check-sat)
