(declare-const X String)
; User-Agent\x3A\d+wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.dxcdirect.com\x0a")))))
; \x2Fbonzibuddy\x2Forigin\x3DsidefindApofisUser-Agent\x3A
(assert (str.in.re X (str.to.re "/bonzibuddy/origin=sidefindApofisUser-Agent:\x0a")))
; (\[[abiu][^\[\]]*\])([^\[\]]+)(\[/?[abiu]\])
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "\x0a[") (re.union (str.to.re "a") (str.to.re "b") (str.to.re "i") (str.to.re "u")) (re.* (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "][") (re.opt (str.to.re "/")) (re.union (str.to.re "a") (str.to.re "b") (str.to.re "i") (str.to.re "u")) (str.to.re "]")))))
; /^(\x00\x00\x00\x00|.{4}(\x00\x00\x00\x00|.{12}))/s
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x00\x00\x00\x00") (re.++ ((_ re.loop 4 4) re.allchar) (re.union (str.to.re "\x00\x00\x00\x00") ((_ re.loop 12 12) re.allchar)))) (str.to.re "/s\x0a"))))
; ^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z]))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")))))
(check-sat)
