(declare-const X String)
; Host\x3Aact=Host\x3aUser-Agent\x3AUser-Agent\x3ALiteselect\x2FGet
(assert (str.in.re X (str.to.re "Host:act=Host:User-Agent:User-Agent:Liteselect/Get\x0a")))
; /\/vic\.aspx\?ver=\d\.\d\.\d+\.\d\x26rnd=\d{5}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//vic.aspx?ver=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.range "0" "9") (str.to.re "&rnd=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; /^\x2f[A-Z\d]{83}\x3d[A-Z\d]{10}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 83 83) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 10 10) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
; /filename=[^\n]*\x2eswf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".swf/i\x0a")))))
; xpsp2-\s+spyblpatHost\x3Ais\x2EphpBarFrom\x3A
(assert (not (str.in.re X (re.++ (str.to.re "xpsp2-") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblpatHost:is.phpBarFrom:\x0a")))))
(check-sat)
