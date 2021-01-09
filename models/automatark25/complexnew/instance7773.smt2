(declare-const X String)
; /stat2\.php\?w=\d+\x26i=[0-9a-f]{32}\x26a=\d+/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/stat2.php?w=") (re.+ (re.range "0" "9")) (str.to.re "&i=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "&a=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; \x2Fcs\x2Fpop4\x2F\s+data\.warezclient\.com
(assert (not (str.in.re X (re.++ (str.to.re "/cs/pop4/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data.warezclient.com\x0a")))))
; Host\x3A\s+A-311Servert=form-data\x3B\x20name=\x22pid\x22
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "A-311Servert=form-data; name=\x22pid\x22\x0a")))))
; target[ ]*[=]([ ]*)(["]|['])*([_])*([A-Za-z0-9])+(["])*
(assert (str.in.re X (re.++ (str.to.re "target") (re.* (str.to.re " ")) (str.to.re "=") (re.* (str.to.re " ")) (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* (str.to.re "_")) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.* (str.to.re "\x22")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ecgm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cgm/i\x0a")))))
(check-sat)
