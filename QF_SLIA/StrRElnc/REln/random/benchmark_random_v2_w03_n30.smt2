(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (re.++ (re.+ (re.+ (str.to_re "865"))) (str.to_re "9")))))
(assert (str.in_re y (re.+ (str.to_re "19"))))

(assert (>= (+ (* 10 (str.to_int x)) (* (- 2) (str.to_int y))) 8))
(assert (< (+ (* (- 2) (str.len y)) (* (- 10) (str.to_int y))) 34))

(check-sat)