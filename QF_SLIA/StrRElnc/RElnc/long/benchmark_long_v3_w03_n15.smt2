(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ "73" y z)))

(assert (str.in_re z (re.union (str.to_re "3") (re.+ (str.to_re "8")))))
(assert (str.in_re x (re.* (re.+ (re.++ (re.* (str.to_re "29")) (re.range "0" "8"))))))
(assert (str.in_re y (re.++ (re.union (str.to_re "87") (re.* (str.to_re "892"))) (re.range "5" "9"))))

(assert (= (+ (* (- 7) (str.len x)) (* 3 (str.len y)) (* 6 (str.len z))) 99))
(assert (<= (+ (* (- 7) (str.len x)) (* 6 (str.len z))) 0))
(assert (<= (+ (* 10 (str.to_int x)) (* (- 3) (str.to_int y)) (* (- 3) (str.to_int z))) 75))

(check-sat)