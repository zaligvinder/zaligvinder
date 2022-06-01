(declare-const X String)
; ^([A-Z]{1}\w{1,3}) (\d{1}[A-Z]{2})$
(assert (str.in_re X (re.++ (str.to_re " \u{a}") ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "A" "Z")))))
; cdpViewWatcher\u{2F}cgi\u{2F}logurl\.cgiwww\u{2E}bydou\u{2E}com
(assert (str.in_re X (str.to_re "cdpViewWatcher/cgi/logurl.cgiwww.bydou.com\u{a}")))
; /filename=[^\n]*\u{2e}jpeg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpeg/i\u{a}")))))
; /X-ID\u{3a}\s\u{30}\u{30}+[0-9a-f]{20}(\r\n)+/iH
(assert (not (str.in_re X (re.++ (str.to_re "/X-ID:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "0") (re.+ (str.to_re "0")) ((_ re.loop 20 20) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.+ (str.to_re "\u{d}\u{a}")) (str.to_re "/iH\u{a}")))))
; SecureNet\s+hostiedesksearch\.dropspam\.com
(assert (str.in_re X (re.++ (str.to_re "SecureNet") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "hostiedesksearch.dropspam.com\u{a}"))))
(check-sat)
