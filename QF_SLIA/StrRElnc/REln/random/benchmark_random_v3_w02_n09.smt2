(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.* (re.+ (re.+ (re.+ (str.to_re "981")))))))
(assert (str.in_re y (re.union (re.* (re.+ (str.to_re "137"))) (re.+ (str.to_re "17")))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "6")) (re.union (str.to_re "894") (re.range "6" "9")))))

(assert (< (+ (- (str.len x)) (* (- 8) (str.len y)) (* (- 6) (str.len z))) 85))
(assert (< (+ (* (- 9) (str.to_int x)) (* (- 10) (str.to_int y)) (* 10 (str.to_int z))) 1))

(check-sat)