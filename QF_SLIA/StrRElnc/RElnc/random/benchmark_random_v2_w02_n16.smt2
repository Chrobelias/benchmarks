(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "61")))

(assert (str.in_re x (re.+ (re.union (re.+ (re.range "6" "8")) (re.+ (str.to_re "461"))))))
(assert (str.in_re y (re.* (re.+ (re.range "0" "7")))))

(assert (= (+ (* 2 (str.len x)) (str.len y)) 21))
(assert (<= (+ (* 9 (str.to_int x)) (* (- 9) (str.to_int y))) 81))

(check-sat)