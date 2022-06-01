(declare-const X String)
; Host\u{3A}\s+Boss\s+media\u{2E}top-banners\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Boss") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "media.top-banners.com\u{a}"))))
; Host\u{3A}1\-extreme\u{2E}bizX-Mailer\u{3a}www\u{2E}webcruiser\u{2E}cc
(assert (not (str.in_re X (str.to_re "Host:1-extreme.bizX-Mailer:\u{13}www.webcruiser.cc\u{a}"))))
; /filename=[^\n]*\u{2e}eps/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".eps/i\u{a}")))))
; 3AUser-Agent\u{3A}FROM\u{3A}Remoteqlqqlbojvii\u{2f}gtHost\u{3A}
(assert (not (str.in_re X (str.to_re "3AUser-Agent:FROM:Remoteqlqqlbojvii/gtHost:\u{a}"))))
; ^((0[1-9])|(1[0-2]))[\/\.\-]*((0[8-9])|(1[1-9]))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.* (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-"))) (re.union (re.++ (str.to_re "0") (re.range "8" "9")) (re.++ (str.to_re "1") (re.range "1" "9"))) (str.to_re "\u{a}")))))
(check-sat)
