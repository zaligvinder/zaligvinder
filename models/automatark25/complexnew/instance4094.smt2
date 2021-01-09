(declare-const X String)
; on\dstepwww\x2Ekornputers\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "on") (re.range "0" "9") (str.to.re "stepwww.kornputers.com\x0a")))))
; ^((\d{1,2})?([.][\d]{1,2})?){1}[%]{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.++ (re.opt ((_ re.loop 1 2) (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))))) ((_ re.loop 1 1) (str.to.re "%")) (str.to.re "\x0a")))))
; <script[^>]*>[\w|\t|\r|\W]*</script>
(assert (not (str.in.re X (re.++ (str.to.re "<script") (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.* (re.union (str.to.re "|") (str.to.re "\x09") (str.to.re "\x0d") (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "</script>\x0a")))))
; ( xmlns:.*=[",'].*[",'])|( xmlns=[",'].*[",'])
(assert (str.in.re X (re.union (re.++ (str.to.re " xmlns:") (re.* re.allchar) (str.to.re "=") (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'")) (re.* re.allchar) (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'"))) (re.++ (str.to.re "\x0a xmlns=") (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'")) (re.* re.allchar) (re.union (str.to.re "\x22") (str.to.re ",") (str.to.re "'"))))))
; ^-?\d{1,3}\.(\d{3}\.)*\d{3},\d\d$|^-?\d{1,3},\d\d$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "."))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ",") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.range "0" "9") (re.range "0" "9") (str.to.re "\x0a"))))))
(check-sat)
