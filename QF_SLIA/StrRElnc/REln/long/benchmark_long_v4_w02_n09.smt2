(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re a (re.union (re.union (str.to_re "86") (re.union (re.* (str.to_re "0")) (str.to_re "99"))) (str.to_re "104"))))
(assert (str.in_re x (re.++ (str.to_re "75") (re.union (str.to_re "37") (re.union (str.to_re "43") (re.+ (re.range "6" "8")))))))
(assert (str.in_re z (re.* (str.to_re "92"))))
(assert (str.in_re y (re.* (str.to_re "243"))))

(assert (< (+ (* (- 2) (str.to_int x)) (* (- 7) (str.to_int y)) (* 8 (str.to_int z)) (- (str.to_int a))) 97))
(assert (>= (+ (* (- 8) (str.len x)) (* (- 4) (str.len y)) (* (- 5) (str.len z)) (* (- 2) (str.len a))) 97))

(check-sat)