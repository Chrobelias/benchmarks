(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "25" y)))

(assert (str.in_re y (re.++ (re.range "0" "9") (re.* (re.range "0" "2")))))
(assert (str.in_re x (re.++ (re.* (re.range "2" "9")) (re.+ (re.* (str.to_re "3"))))))

(assert (> (+ (* 2 (str.len y)) (* (- 2) (str.to_int x))) 83))
(assert (>= (* 8 (str.to_int x)) 66))
(assert (< (+ (- (str.to_int x)) (* 10 (str.to_int y))) 57))

(check-sat)