(declare-const X String)
; dialupvpn\u{5f}pwd\s+HXDownloadupdailyinformation
(assert (str.in_re X (re.++ (str.to_re "dialupvpn_pwd") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HXDownloadupdailyinformation\u{a}"))))
; ^R(\d){8}
(assert (str.in_re X (re.++ (str.to_re "R") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
; (\d+(-\d+)*)+(,\d+(-\d+)*)*
(assert (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to_re "-") (re.+ (re.range "0" "9")))))) (re.* (re.++ (str.to_re ",") (re.+ (re.range "0" "9")) (re.* (re.++ (str.to_re "-") (re.+ (re.range "0" "9")))))) (str.to_re "\u{a}"))))
; ^0{0,1}[1-9]{1}[0-9]{2}[\s]{0,1}[\-]{0,1}[\s]{0,1}[1-9]{1}[0-9]{6}$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
; A-311Host\u{3A}lnzzlnbk\u{2f}pkrm\.finSubject\u{3a}
(assert (not (str.in_re X (str.to_re "A-311Host:lnzzlnbk/pkrm.finSubject:\u{a}"))))
(check-sat)
