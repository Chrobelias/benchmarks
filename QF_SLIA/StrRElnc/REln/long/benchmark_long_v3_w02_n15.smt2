(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.++ (re.+ (str.to_re "4")) (re.* (str.to_re "551")))))
(assert (str.in_re z (re.++ (re.* (str.to_re "34")) (re.range "0" "9"))))
(assert (str.in_re x (re.* (re.union (re.++ (re.range "0" "5") (str.to_re "40")) (str.to_re "63")))))

(assert (> (+ (* 7 (str.len y)) (* 9 (str.to_int x)) (* (- 7) (str.to_int y)) (- (str.to_int z))) 14))

(check-sat)