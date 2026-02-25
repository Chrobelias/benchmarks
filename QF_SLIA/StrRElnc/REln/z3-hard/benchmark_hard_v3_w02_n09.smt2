(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.* (re.+ (re.union (str.to_re "984") (re.* (str.to_re "5")))))))
(assert (str.in_re x (re.+ (re.union (str.to_re "7") (re.union (re.range "0" "3") (str.to_re "65"))))))
(assert (str.in_re y (re.+ (str.to_re "929"))))

(assert (= (+ (* (- 8) (str.to_int x)) (str.to_int y) (* (- 7) (str.to_int z))) 45))
(assert (>= (+ (* 10 (str.len x)) (* (- 4) (str.len y)) (* 4 (str.len z))) 23))

(check-sat)