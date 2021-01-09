(declare-const X String)
; PASSW=.*www\x2Emakemesearch\x2Ecom.*HBand,X-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "PASSW=") (re.* re.allchar) (str.to.re "www.makemesearch.com") (re.* re.allchar) (str.to.re "HBand,X-Mailer:\x13\x0a"))))
; ^(0{1})([1-9]{2})(\s|-|.{0,1})(\d{3})(\s|-|.{0,1})(\d{2})(\s|-|.{0,1})(\d{2})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "0")) ((_ re.loop 2 2) (re.range "1" "9")) (re.union (str.to.re "-") (re.opt re.allchar) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (re.opt re.allchar) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (re.opt re.allchar) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ecgm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cgm/i\x0a")))))
; ^[1-9]{1}$|^[1-9]{1}[0-9]{1}$|^[1-3]{1}[0-6]{1}[0-5]{1}$|^365$
(assert (not (str.in.re X (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "3")) ((_ re.loop 1 1) (re.range "0" "6")) ((_ re.loop 1 1) (re.range "0" "5"))) (str.to.re "365\x0a")))))
; /filename=[^\n]*\x2epjpeg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pjpeg/i\x0a"))))
(check-sat)
