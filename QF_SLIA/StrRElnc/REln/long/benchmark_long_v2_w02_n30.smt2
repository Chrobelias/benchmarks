(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.++ (re.++ (re.+ (str.to_re "356")) (str.to_re "144")) (str.to_re "847")))))
(assert (str.in_re y (re.++ (re.union (re.+ (str.to_re "51")) (str.to_re "79")) (str.to_re "68"))))

(assert (> (+ (* (- 10) (str.to_int x)) (* (- 10) (str.to_int y))) 84))
(assert (< (+ (* 10 (str.len x)) (* (- 7) (str.len y))) 11))

(check-sat)