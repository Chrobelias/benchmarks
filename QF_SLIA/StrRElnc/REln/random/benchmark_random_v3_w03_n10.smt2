(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (re.++ (str.to_re "690") (re.* (str.to_re "38"))) (str.to_re "757"))))
(assert (str.in_re z (re.++ (str.to_re "701") (re.union (re.+ (str.to_re "11")) (re.range "4" "6")))))
(assert (str.in_re y (re.union (re.++ (str.to_re "25") (str.to_re "972")) (re.+ (re.range "0" "3")))))

(assert (< (+ (* (- 8) (str.len x)) (* 8 (str.len y)) (* (- 6) (str.len z))) 1))
(assert (>= (+ (* 10 (str.len x)) (- (str.len y)) (* (- 8) (str.to_int x))) 57))

(check-sat)