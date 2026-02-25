(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "37")))

(assert (str.in_re x (re.+ (re.* (re.union (re.* (re.range "3" "9")) (str.to_re "36"))))))
(assert (str.in_re y (re.* (re.union (str.to_re "83") (re.range "7" "9")))))

(assert (>= (+ (* (- 4) (str.to_int x)) (* (- 6) (str.to_int y))) 72))
(assert (> (+ (* (- 3) (str.to_int x)) (* (- 4) (str.to_int y))) 86))
(assert (< (* 4 (str.to_int y)) 33))
(assert (= (+ (* 3 (str.len x)) (* (- 9) (str.len y))) 35))

(check-sat)