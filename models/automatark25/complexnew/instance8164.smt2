(declare-const X String)
; ^[1-9]{1,2}(.5)?$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "1" "9")) (re.opt (re.++ re.allchar (str.to.re "5"))) (str.to.re "\x0a"))))
; hirmvtg\x2fggqh\.kqhSurveillanceHost\x3A
(assert (str.in.re X (str.to.re "hirmvtg/ggqh.kqh\x1bSurveillance\x13Host:\x0a")))
; ".*?"|".*$|'.*?'|'.*$
(assert (str.in.re X (re.union (re.++ (str.to.re "\x22") (re.* re.allchar) (str.to.re "\x22")) (re.++ (str.to.re "\x22") (re.* re.allchar)) (re.++ (str.to.re "'") (re.* re.allchar) (str.to.re "'")) (re.++ (str.to.re "'") (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
