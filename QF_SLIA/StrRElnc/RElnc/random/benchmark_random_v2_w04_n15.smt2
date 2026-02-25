(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "77" y)))

(assert (str.in_re x (re.* (re.range "2" "9"))))
(assert (str.in_re y (re.union (re.union (re.+ (str.to_re "851")) (str.to_re "88")) (str.to_re "63"))))

(assert (< (+ (* (- 9) (str.to_int x)) (* 4 (str.to_int y))) 26))
(assert (>= (+ (* (- 5) (str.to_int x)) (* (- 7) (str.to_int y))) 88))
(assert (= (* (- 10) (str.to_int x)) 12))
(assert (> (+ (* 9 (str.len x)) (* 9 (str.len y))) 61))

(check-sat)