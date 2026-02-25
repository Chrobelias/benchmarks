(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (re.* (re.+ (re.range "4" "6"))) (re.range "0" "6")) (re.range "0" "7"))))

(assert (>= (* 9 (str.to_int x)) 52))
(assert (= (* (- 7) (str.len x)) 97))

(check-sat)