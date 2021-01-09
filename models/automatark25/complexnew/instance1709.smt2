(declare-const X String)
; ^\d+$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2erp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rp/i\x0a")))))
; X-Mailer\x3aReferer\x3Asponsor2\.ucmore\.com
(assert (not (str.in.re X (str.to.re "X-Mailer:\x13Referer:sponsor2.ucmore.com\x0a"))))
(check-sat)
