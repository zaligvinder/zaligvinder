(declare-const X String)
; /STOR\x20PIC\x5f\d{6}[a-z]{2}\x5f\x20\x5f\d{7}\x20\x2e\d{3}/i
(assert (str.in.re X (re.++ (str.to.re "/STOR PIC_") ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "_ _") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re " .") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/i\x0a"))))
; DmInf\x5E\x0D\x0A\x0D\x0AAttached\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in.re X (str.to.re "DmInf^\x0d\x0a\x0d\x0aAttached/bar_pl/chk.fcgi\x0a")))
; richfind\x2Ecomdcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (str.to.re "richfind.comdcww.dmcast.com\x0a"))))
; ^\d+(\.\d{2})?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; hotbar\s+ocllceclbhs\x2fgthftpquickbruteUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "hotbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gthftpquickbruteUser-Agent:\x0a")))))
(check-sat)
