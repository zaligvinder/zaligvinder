(declare-const X String)
; /Referer\x3a\s*?http\x3a\x2f{2}[a-z0-9\x2e\x2d]+\x2fs\x2f\x3fk\x3d/Hi
(assert (not (str.in.re X (re.++ (str.to.re "/Referer:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "http:") ((_ re.loop 2 2) (str.to.re "/")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re "/s/?k=/Hi\x0a")))))
; /("(\\["\\]|[^"])*("|$)|\S)+/g
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.++ (str.to.re "\x22") (re.* (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "\x5c"))) (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "/g\x0a"))))
; Host\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (not (str.in.re X (str.to.re "Host:as.starware.com/dp/search?x=\x0a"))))
; /^\/[\w-]{48}\.[a-z]{2,8}[0-9]?$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 48 48) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 8) (re.range "a" "z")) (re.opt (re.range "0" "9")) (str.to.re "/U\x0a"))))
; /filename=[^\n]*\x2ewmv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wmv/i\x0a")))))
(check-sat)
