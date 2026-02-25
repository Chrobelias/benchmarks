(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (str.to_re "39") (re.* (str.to_re "396")))))
(assert (str.in_re y (re.+ (str.to_re "516"))))

(assert (>= (+ (* (- 4) (str.len y)) (* 6 (str.to_int y))) 29))
(assert (= (+ (* 5 (str.to_int x)) (* (- 4) (str.to_int y))) 32))

(check-sat)