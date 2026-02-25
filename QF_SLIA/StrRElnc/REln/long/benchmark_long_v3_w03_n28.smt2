(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.++ (re.range "3" "8") (re.+ (re.+ (re.range "7" "9")))) (str.to_re "595"))))
(assert (str.in_re z (re.* (re.++ (str.to_re "737") (re.++ (str.to_re "80") (re.range "6" "8"))))))
(assert (str.in_re y (re.* (str.to_re "35"))))

(assert (< (+ (* 4 (str.len x)) (* (- 2) (str.len y)) (* (- 7) (str.to_int x))) 48))
(assert (<= (+ (* 7 (str.len x)) (- (str.len y)) (* 4 (str.len z))) 66))

(check-sat)