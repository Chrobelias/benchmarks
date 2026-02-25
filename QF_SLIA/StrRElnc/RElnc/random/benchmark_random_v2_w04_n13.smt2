(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "55")))

(assert (str.in_re y (re.+ (re.range "4" "7"))))
(assert (str.in_re x (re.++ (re.range "1" "8") (re.union (re.union (re.+ (re.range "6" "8")) (str.to_re "701")) (str.to_re "48")))))

(assert (<= (+ (* 3 (str.len y)) (* (- 8) (str.to_int y))) 11))
(assert (< (+ (* 5 (str.len x)) (str.len y)) 67))
(assert (< (+ (- (str.to_int x)) (* (- 3) (str.to_int y))) 49))

(check-sat)