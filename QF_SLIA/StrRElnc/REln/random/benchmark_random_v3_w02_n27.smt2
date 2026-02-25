(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.* (str.to_re "224"))))
(assert (str.in_re x (re.* (re.union (str.to_re "62") (re.+ (re.+ (re.range "6" "9")))))))
(assert (str.in_re y (re.+ (str.to_re "72"))))

(assert (> (+ (* (- 5) (str.len y)) (* 2 (str.len z)) (* (- 3) (str.to_int x))) 10))

(check-sat)