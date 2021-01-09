(declare-const X String)
; (^\(\)$|^\(((\([0-9]+,(\((\([0-9]+,[0-9]+,[0-9]+\),)*(\([0-9]+,[0-9]+,[0-9]+\)){1}\))+\),)*(\([0-9]+,(\((\([0-9]+,[0-9]+,[0-9]+\),)*(\([0-9]+,[0-9]+,[0-9]+\)){1}\))+\)){1}\)))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a(") (re.union (str.to.re ")") (re.++ (re.* (re.++ (str.to.re "(") (re.+ (re.range "0" "9")) (str.to.re ",") (re.+ (re.++ (str.to.re "(") (re.* (re.++ (str.to.re "(") (re.+ (re.range "0" "9")) (str.to.re ",") (re.+ (re.range "0" "9")) (str.to.re ",") (re.+ (re.range "0" "9")) (str.to.re "),"))) ((_ re.loop 1 1) (re.++ (str.to.re "(") (re.+ (re.range "0" "9")) (str.to.re ",") (re.+ (re.range "0" "9")) (str.to.re ",") (re.+ (re.range "0" "9")) (str.to.re ")"))) (str.to.re ")"))) (str.to.re "),"))) ((_ re.loop 1 1) (re.++ (str.to.re "(") (re.+ (re.range "0" "9")) (str.to.re ",") (re.+ (re.++ (str.to.re "(") (re.* (re.++ (str.to.re "(") (re.+ (re.range "0" "9")) (str.to.re ",") (re.+ (re.range "0" "9")) (str.to.re ",") (re.+ (re.range "0" "9")) (str.to.re "),"))) ((_ re.loop 1 1) (re.++ (str.to.re "(") (re.+ (re.range "0" "9")) (str.to.re ",") (re.+ (re.range "0" "9")) (str.to.re ",") (re.+ (re.range "0" "9")) (str.to.re ")"))) (str.to.re ")"))) (str.to.re ")"))) (str.to.re ")")))))))
; ^(20|21|22|23|[01]\d|\d)(([:.][0-5]\d){1,2})$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "20") (str.to.re "21") (str.to.re "22") (str.to.re "23") (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9")) (re.range "0" "9")) ((_ re.loop 1 2) (re.++ (re.union (str.to.re ":") (str.to.re ".")) (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a")))))
; badurl\x2Egrandstreetinteractive\x2EcomFilteredHost\x3Ae2give\.com\x2Fnewsurfer4\x2F
(assert (str.in.re X (str.to.re "badurl.grandstreetinteractive.comFilteredHost:e2give.com/newsurfer4/\x0a")))
; http://(www\.)?([^\.]+)\.com
(assert (not (str.in.re X (re.++ (str.to.re "http://") (re.opt (str.to.re "www.")) (re.+ (re.comp (str.to.re "."))) (str.to.re ".com\x0a")))))
; ^(\d)?(\d|,)*\.?\d{1,2}$
(assert (not (str.in.re X (re.++ (re.opt (re.range "0" "9")) (re.* (re.union (re.range "0" "9") (str.to.re ","))) (re.opt (str.to.re ".")) ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
