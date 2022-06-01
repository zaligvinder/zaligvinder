(declare-const X String)
; ^([1-9]{1}[0-9]{0,7})+((,[1-9]{1}[0-9]{0,7}){0,1})+$
(assert (not (str.in_re X (re.++ (re.+ (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9")))) (re.+ (re.opt (re.++ (str.to_re ",") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9"))))) (str.to_re "\u{a}")))))
; /\d+&/miR
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.range "0" "9")) (str.to_re "&/miR\u{a}")))))
; TM_SEARCH3Host\u{3a}User-Agent\u{3A}media\u{2E}dxcdirect\u{2E}com
(assert (not (str.in_re X (str.to_re "TM_SEARCH3Host:User-Agent:media.dxcdirect.com\u{a}"))))
; url=\"([^\[\]\"]*)\"
(assert (str.in_re X (re.++ (str.to_re "url=\u{22}") (re.* (re.union (str.to_re "[") (str.to_re "]") (str.to_re "\u{22}"))) (str.to_re "\u{22}\u{a}"))))
; \u{2F}searchfast\u{2F}Navhelper
(assert (not (str.in_re X (str.to_re "/searchfast/Navhelper\u{a}"))))
(check-sat)
