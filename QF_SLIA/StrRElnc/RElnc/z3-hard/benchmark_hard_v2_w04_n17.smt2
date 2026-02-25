(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ x "73") (str.++ "27" y)))

(assert (str.in_re x (re.+ (re.union (re.union (re.+ (str.to_re "5")) (str.to_re "55")) (re.range "2" "7")))))
(assert (str.in_re y (re.union (re.+ (re.range "1" "4")) (re.union (str.to_re "30") (str.to_re "8")))))

(assert (< (+ (* (- 7) (str.len x)) (str.len y)) 39))
(assert (> (+ (* (- 5) (str.len x)) (* 6 (str.len y)) (* (- 6) (str.to_int y))) 67))
(assert (>= (* 6 (str.len x)) 44))

(check-sat)