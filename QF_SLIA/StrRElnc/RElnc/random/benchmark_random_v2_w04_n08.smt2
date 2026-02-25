(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "37" y)))

(assert (str.in_re x (re.union (str.to_re "8") (re.* (re.range "1" "9")))))
(assert (str.in_re y (re.++ (str.to_re "53") (re.+ (re.range "1" "5")))))

(assert (> (+ (* 8 (str.len x)) (str.len y) (* 6 (str.to_int x))) 26))
(assert (< (+ (* (- 10) (str.to_int x)) (* (- 9) (str.to_int y))) 60))
(assert (>= (+ (* (- 3) (str.to_int x)) (- (str.to_int y))) 25))

(check-sat)