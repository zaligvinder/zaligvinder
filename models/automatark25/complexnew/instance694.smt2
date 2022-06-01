(declare-const X String)
; ^[1-5]$
(assert (str.in_re X (re.++ (re.range "1" "5") (str.to_re "\u{a}"))))
; \u{2F}images\u{2F}nocache\u{2F}tr\u{2F}gca\u{2F}m\.gif\?
(assert (not (str.in_re X (str.to_re "/images/nocache/tr/gca/m.gif?\u{a}"))))
; /\/index\d{9}\.asp/i
(assert (str.in_re X (re.++ (str.to_re "//index") ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re ".asp/i\u{a}"))))
; SecureNet\sHost\u{3A}X-Mailer\u{3A}as\u{2E}starware\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "SecureNet") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:X-Mailer:\u{13}as.starware.com\u{a}")))))
; dll\u{3F}\w+updates\w+Host\u{3a}SoftwareHost\u{3A}joke
(assert (str.in_re X (re.++ (str.to_re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "updates") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:SoftwareHost:joke\u{a}"))))
(check-sat)
