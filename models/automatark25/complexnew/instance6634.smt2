(declare-const X String)
; /filename=[^\n]*\x2epng/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".png/i\x0a")))))
; (([\w|\.]*)\s*={1}\s*(.*?))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.union (str.to.re "|") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 1) (str.to.re "=")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar))))
; ^((AL)|(AK)|(AS)|(AZ)|(AR)|(CA)|(CO)|(CT)|(DE)|(DC)|(FM)|(FL)|(GA)|(GU)|(HI)|(ID)|(IL)|(IN)|(IA)|(KS)|(KY)|(LA)|(ME)|(MH)|(MD)|(MA)|(MI)|(MN)|(MS)|(MO)|(MT)|(NE)|(NV)|(NH)|(NJ)|(NM)|(NY)|(NC)|(ND)|(MP)|(OH)|(OK)|(OR)|(PW)|(PA)|(PR)|(RI)|(SC)|(SD)|(TN)|(TX)|(UT)|(VT)|(VI)|(VA)|(WA)|(WV)|(WI)|(WY))$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "AL") (str.to.re "AK") (str.to.re "AS") (str.to.re "AZ") (str.to.re "AR") (str.to.re "CA") (str.to.re "CO") (str.to.re "CT") (str.to.re "DE") (str.to.re "DC") (str.to.re "FM") (str.to.re "FL") (str.to.re "GA") (str.to.re "GU") (str.to.re "HI") (str.to.re "ID") (str.to.re "IL") (str.to.re "IN") (str.to.re "IA") (str.to.re "KS") (str.to.re "KY") (str.to.re "LA") (str.to.re "ME") (str.to.re "MH") (str.to.re "MD") (str.to.re "MA") (str.to.re "MI") (str.to.re "MN") (str.to.re "MS") (str.to.re "MO") (str.to.re "MT") (str.to.re "NE") (str.to.re "NV") (str.to.re "NH") (str.to.re "NJ") (str.to.re "NM") (str.to.re "NY") (str.to.re "NC") (str.to.re "ND") (str.to.re "MP") (str.to.re "OH") (str.to.re "OK") (str.to.re "OR") (str.to.re "PW") (str.to.re "PA") (str.to.re "PR") (str.to.re "RI") (str.to.re "SC") (str.to.re "SD") (str.to.re "TN") (str.to.re "TX") (str.to.re "UT") (str.to.re "VT") (str.to.re "VI") (str.to.re "VA") (str.to.re "WA") (str.to.re "WV") (str.to.re "WI") (str.to.re "WY")) (str.to.re "\x0a")))))
; Host\x3AAttachedengineact=Download
(assert (str.in.re X (str.to.re "Host:Attachedengineact=Download\x0a")))
; ^((\+)?(\d{2}[-]))?(\d{10}){1}?$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
