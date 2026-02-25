(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.++ (re.+ (str.to_re "78")) (re.range "5" "8")) (re.* (str.to_re "6")))))
(assert (str.in_re x (re.* (str.to_re "68"))))

(assert (>= (+ (* 8 (str.to_int x)) (* (- 10) (str.to_int y))) 89))
(assert (> (+ (* 8 (str.len x)) (* (- 9) (str.to_int x)) (* 10 (str.to_int y))) 11))

(check-sat)