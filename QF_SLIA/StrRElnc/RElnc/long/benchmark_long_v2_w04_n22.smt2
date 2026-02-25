(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= (str.++ y "55") (str.++ x "55")))

(assert (str.in_re y (re.+ (re.union (str.to_re "542") (re.range "2" "5")))))
(assert (str.in_re x (re.++ (re.* (str.to_re "40")) (re.range "3" "9"))))

(assert (>= (+ (* 8 (str.len y)) (* (- 7) (str.to_int x)) (* 9 (str.to_int y))) 76))
(assert (= (+ (* (- 2) (str.to_int x)) (* 5 (str.to_int y))) 11))
(assert (>= (+ (* 2 (str.len x)) (* 4 (str.len y))) 72))

(check-sat)