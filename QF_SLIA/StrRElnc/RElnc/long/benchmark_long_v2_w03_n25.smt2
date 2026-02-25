(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= (str.++ "35" y) (str.++ x "58")))

(assert (str.in_re y (re.+ (re.* (re.union (str.to_re "83") (str.to_re "8"))))))
(assert (str.in_re x (re.+ (re.range "2" "6"))))

(assert (>= (+ (* (- 3) (str.len x)) (* (- 9) (str.len y)) (* 6 (str.to_int y))) 56))
(assert (> (+ (* 5 (str.to_int x)) (- (str.to_int y))) 44))

(check-sat)