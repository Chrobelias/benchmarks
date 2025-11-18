(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 100))

(assert (str.in_re x (re.* (re.++ (re.union (re.+ (re.range "6" "8")) (str.to_re "4")) (str.to_re "66")))))
(assert (str.in_re y (re.union (str.to_re "302") (re.* (re.union (str.to_re "244") (re.+ (str.to_re "430")))))))
(assert (str.in_re z (re.union (re.++ (str.to_re "59") (re.+ (re.range "7" "9"))) (str.to_re "834"))))

(assert (< (+ (* 9 (str.to_int x)) (* 2 (str.to_int y)) (* 7 (str.to_int z))) 87))
(assert (>= (+ (* (- 2) (str.len x)) (str.len y) (* (- 2) (str.len z))) 17))

(check-sat)