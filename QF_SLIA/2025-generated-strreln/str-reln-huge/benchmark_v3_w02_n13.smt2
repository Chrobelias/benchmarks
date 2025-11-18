(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.+ (str.to_re "39"))))
(assert (str.in_re y (re.++ (re.++ (str.to_re "718") (re.+ (str.to_re "29"))) (re.+ (str.to_re "4")))))
(assert (str.in_re z (re.union (re.* (re.* (str.to_re "49"))) (re.* (re.range "7" "9")))))

(assert (= (+ (* 8 (str.len x)) (* 5 (str.to_int z))) 60))

(check-sat)