(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "69" y)))

(assert (str.in_re x (re.* (re.++ (re.range "6" "9") (re.* (re.* (str.to_re "30")))))))
(assert (str.in_re y (re.union (re.* (re.range "2" "5")) (re.union (str.to_re "97") (re.+ (str.to_re "18"))))))

(assert (< (+ (* (- 4) (str.to_int x)) (* (- 9) (str.to_int y))) 78))
(assert (<= (+ (* 10 (str.len x)) (- (str.len y)) (str.to_int x)) 90))

(check-sat)