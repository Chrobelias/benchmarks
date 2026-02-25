(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.union (str.to_re "29") (re.* (re.+ (str.to_re "0"))))))
(assert (str.in_re x (re.++ (re.* (re.* (re.+ (str.to_re "90")))) (str.to_re "951"))))
(assert (str.in_re z (re.+ (re.++ (re.+ (str.to_re "4")) (re.+ (str.to_re "8"))))))

(assert (>= (+ (* 2 (str.len y)) (* (- 4) (str.to_int x))) 82))
(assert (> (+ (* 3 (str.len x)) (* 9 (str.len y)) (- (str.len z))) 48))

(check-sat)