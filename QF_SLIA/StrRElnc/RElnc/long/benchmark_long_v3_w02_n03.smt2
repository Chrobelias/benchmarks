(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))

(assert (= z (str.++ y "99" x)))

(assert (str.in_re y (re.++ (re.* (re.+ (str.to_re "548"))) (re.range "4" "7"))))
(assert (str.in_re x (re.union (re.++ (str.to_re "2") (re.+ (str.to_re "824"))) (re.+ (str.to_re "43")))))
(assert (str.in_re z (re.+ (re.* (re.+ (re.range "1" "9"))))))

(assert (> (+ (* (- 5) (str.len x)) (* (- 8) (str.len y)) (* (- 7) (str.len z))) 65))
(assert (<= (+ (* (- 9) (str.to_int x)) (* (- 8) (str.to_int y)) (- (str.to_int z))) 49))

(check-sat)