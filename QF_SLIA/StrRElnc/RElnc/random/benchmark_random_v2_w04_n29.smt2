(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "29")))

(assert (str.in_re y (re.* (re.union (re.range "2" "9") (re.union (re.* (re.range "4" "6")) (str.to_re "551"))))))
(assert (str.in_re x (re.* (re.union (re.+ (re.+ (str.to_re "586"))) (str.to_re "76")))))

(assert (> (+ (* 8 (str.len x)) (* (- 3) (str.len y))) 68))
(assert (= (+ (* (- 3) (str.to_int x)) (* (- 8) (str.to_int y))) 27))
(assert (< (+ (* 2 (str.to_int x)) (* (- 6) (str.to_int y))) 2))
(assert (> (+ (* (- 3) (str.to_int x)) (- (str.to_int y))) 71))

(check-sat)