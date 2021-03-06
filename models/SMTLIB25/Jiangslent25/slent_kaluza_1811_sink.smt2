(set-info :smt-lib-version 2.6)
(set-logic ALL)
(set-info :source |
Generated by: Hung-En Wang, Shih-Yu Chen, Fang Yu, and Jie-Hong R. Jiang
Generated on: 2019-02-28
Generator: modified from Kaluza benchmarks
Application: Security analysis of string manipulating web applications with string length constraints
Target solver: ABC, CVC4, Norn, S3P, Trau, Z3-str3
Publication:
Hung-En Wang, Shih-Yu Chen, Fang Yu, Jie-Hong R. Jiang:
A symbolic model checking approach to the analysis of string and length constraints. ASE 2018: 623-633
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)

(declare-fun T_12 () Bool)
(declare-fun T_13 () Bool)
(declare-fun T_57 () Bool)
(declare-fun T_58 () Bool)
(declare-fun T_SELECT_4 () Bool)
(declare-fun T_SELECT_5 () Bool)
(declare-fun T_c () Bool)
(declare-fun T_e () Bool)
(declare-fun T_f () Bool)
(declare-fun I0_23 () Int)
(declare-fun I1_23 () Int)
(declare-fun I2_23 () Int)
(declare-fun PCTEMP_LHS_4 () Int)
(declare-fun PCTEMP_LHS_5 () Int)
(declare-fun T_10 () Int)
(declare-fun NEW_DGNode_209 () String)
(declare-fun NEW_DGNode_213 () String)
(declare-fun NEW_DGNode_217 () String)
(declare-fun NEW_DGNode_221 () String)
(declare-fun NEW_DGNode_225 () String)
(declare-fun NEW_DGNode_229 () String)
(declare-fun NEW_DGNode_233 () String)
(declare-fun NEW_DGNode_234 () String)
(declare-fun PCTEMP_LHS_6 () String)
(declare-fun T_51 () String)
(declare-fun T_52 () String)
(declare-fun T_53 () String)
(declare-fun T_54 () String)
(declare-fun T_55 () String)
(declare-fun T_56 () String)
(assert (= T_56 NEW_DGNode_233))
(assert (= NEW_DGNode_233 NEW_DGNode_234))
(assert (= NEW_DGNode_233 ""))
(assert (= NEW_DGNode_234 (str.++ T_55 NEW_DGNode_229)))
(assert (= T_55 (str.++ T_54 NEW_DGNode_225)))
(assert (= T_54 (str.++ T_53 NEW_DGNode_221)))
(assert (= T_53 (str.++ T_52 NEW_DGNode_217)))
(assert (= T_52 (str.++ T_51 NEW_DGNode_213)))
(assert (= T_51 (str.++ NEW_DGNode_209 PCTEMP_LHS_6)))
(assert (= NEW_DGNode_209 "__utmb="))
(assert (= PCTEMP_LHS_6 "-"))
(assert (= NEW_DGNode_213 ";"))
(assert (= NEW_DGNode_217 "/"))
(assert (= NEW_DGNode_221 ";"))
(assert (= NEW_DGNode_225 ""))
(assert (= NEW_DGNode_229 ""))
(assert T_57)
(assert T_58)
(assert (= T_58 (not T_57)))
(assert (= T_SELECT_5 (not (= PCTEMP_LHS_5 (- 1)))))
(assert T_f)
(assert (= T_f (not T_e)))
(assert (= T_e (< PCTEMP_LHS_5 0)))
(assert (= T_SELECT_4 (not (= PCTEMP_LHS_4 (- 1)))))
(assert T_c)
(assert (= T_c (< (- 1) PCTEMP_LHS_4)))
(assert (= T_10 (+ PCTEMP_LHS_4 7)))
(assert (>= T_10 0))
(assert (>= PCTEMP_LHS_5 T_10))
(assert (= I2_23 I1_23))
(assert (<= PCTEMP_LHS_5 I1_23))
(assert (= I0_23 (- PCTEMP_LHS_5 T_10)))
(assert (= I0_23 (str.len PCTEMP_LHS_6))) ; len 0
(assert T_12)
(assert T_13)
(assert (= T_13 (not T_12)))
(check-sat)
(exit)
