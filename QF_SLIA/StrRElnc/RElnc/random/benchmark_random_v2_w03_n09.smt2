(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "76" y)))

(assert (str.in_re x (re.* (re.union (str.to_re "91") (re.* (re.range "6" "9"))))))
(assert (str.in_re y (re.* (re.++ (re.range "2" "8") (str.to_re "6")))))

(assert (= (+ (- (str.to_int x)) (* 7 (str.to_int y))) 70))
(assert (> (+ (* 3 (str.to_int x)) (* 7 (str.to_int y))) 27))
(assert (> (+ (* (- 2) (str.len x)) (* (- 7) (str.len y))) 58))

(check-sat)