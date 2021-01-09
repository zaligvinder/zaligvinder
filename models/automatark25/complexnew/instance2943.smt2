(declare-const X String)
; www.*tool\x2Eworld2\x2Ecn
(assert (str.in.re X (re.++ (str.to.re "www") (re.* re.allchar) (str.to.re "tool.world2.cn\x13\x0a"))))
; /\.php\?[a-z]{2,8}=[a-z0-9]{2}\x3a[a-z0-9]{2}\x3a[a-z0-9]{2}\x3a[a-z0-9]{2}\x3a[a-z0-9]{2}\&[a-z]{2,8}=/U
(assert (not (str.in.re X (re.++ (str.to.re "/.php?") ((_ re.loop 2 8) (re.range "a" "z")) (str.to.re "=") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ":") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "&") ((_ re.loop 2 8) (re.range "a" "z")) (str.to.re "=/U\x0a")))))
; /filename=[^\n]*\x2ecis/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cis/i\x0a"))))
; /filename=[^\n]*\x2esmil/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smil/i\x0a"))))
; Authorization\x3a\d+lnzzlnbk\x2fpkrm\.fin
(assert (str.in.re X (re.++ (str.to.re "Authorization:") (re.+ (re.range "0" "9")) (str.to.re "lnzzlnbk/pkrm.fin\x0a"))))
(check-sat)
