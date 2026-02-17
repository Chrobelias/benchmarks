(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (str.to_re "3")) (str.to_re "59"))))

(assert (<= (* (- 2) (str.to_int x)) 74))
(assert (< (* 4 (str.to_int x)) 20))
(assert (= (+ (* 4 (str.len x)) (* (- 6) (str.to_int x))) 70))

(check-sat)