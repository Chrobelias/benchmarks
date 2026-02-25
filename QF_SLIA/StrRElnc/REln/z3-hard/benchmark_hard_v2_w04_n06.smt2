(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "6") (re.* (str.to_re "6")))))
(assert (str.in_re x (re.++ (re.* (re.range "7" "9")) (re.union (re.range "5" "9") (str.to_re "311")))))

(assert (= (+ (- (str.len x)) (* 2 (str.len y)) (str.to_int y)) 10))
(assert (< (+ (* (- 3) (str.len x)) (* (- 8) (str.to_int y))) 50))

(check-sat)