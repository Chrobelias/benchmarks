(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ y "80") (str.++ x "80")))

(assert (str.in_re y (re.union (str.to_re "722") (re.++ (re.* (re.* (re.range "7" "9"))) (re.range "0" "6")))))
(assert (str.in_re x (re.+ (str.to_re "2"))))

(assert (<= (+ (* 3 (str.to_int x)) (* 4 (str.to_int y))) 24))
(assert (= (+ (* (- 7) (str.to_int x)) (* (- 5) (str.to_int y))) 19))
(assert (<= (+ (* (- 8) (str.len x)) (* 4 (str.len y))) 19))

(check-sat)