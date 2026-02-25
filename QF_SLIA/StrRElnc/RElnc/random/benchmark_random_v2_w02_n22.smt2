(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "94" y)))

(assert (str.in_re x (re.++ (str.to_re "9") (re.+ (re.range "2" "6")))))
(assert (str.in_re y (re.union (re.* (re.range "6" "9")) (re.range "4" "9"))))

(assert (>= (+ (- (str.len x)) (* 6 (str.len y))) 25))
(assert (>= (+ (* 9 (str.to_int x)) (* (- 4) (str.to_int y))) 52))

(check-sat)