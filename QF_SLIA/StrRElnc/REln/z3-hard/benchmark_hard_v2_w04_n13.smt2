(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (str.to_re "70"))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "927")) (str.to_re "89"))))

(assert (= (+ (* 4 (str.to_int x)) (* 2 (str.to_int y))) 12))
(assert (= (+ (* 2 (str.to_int x)) (* 9 (str.to_int y))) 47))
(assert (< (+ (* (- 5) (str.len x)) (* (- 7) (str.to_int x)) (* 7 (str.to_int y))) 24))

(check-sat)