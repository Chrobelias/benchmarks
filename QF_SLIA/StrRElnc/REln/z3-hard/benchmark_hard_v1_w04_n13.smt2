(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (str.to_re "222")) (re.* (re.+ (str.to_re "91"))))))

(assert (>= (* 8 (str.to_int x)) 78))
(assert (<= (+ (* (- 3) (str.len x)) (str.to_int x)) 9))
(assert (> (* 6 (str.to_int x)) 65))

(check-sat)