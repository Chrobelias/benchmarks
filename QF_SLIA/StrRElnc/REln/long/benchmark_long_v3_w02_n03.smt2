(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (str.in_re z (re.++ (re.++ (re.range "5" "7") (re.* (str.to_re "70"))) (str.to_re "99"))))
(assert (str.in_re y (re.* (re.union (str.to_re "7") (re.* (re.* (str.to_re "4")))))))
(assert (str.in_re x (re.union (str.to_re "123") (re.+ (re.* (str.to_re "781"))))))

(assert (>= (+ (* (- 4) (str.to_int x)) (* 2 (str.to_int y)) (* (- 10) (str.to_int z))) 6))
(assert (> (+ (- (str.len x)) (* (- 9) (str.len z))) 0))

(check-sat)