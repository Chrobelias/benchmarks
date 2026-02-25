(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.+ (re.union (re.union (str.to_re "812") (str.to_re "8")) (str.to_re "59")))))
(assert (str.in_re z (re.* (re.++ (str.to_re "4") (re.++ (re.* (str.to_re "2")) (str.to_re "57"))))))
(assert (str.in_re x (re.++ (re.* (str.to_re "5")) (re.range "5" "9"))))

(assert (>= (+ (* (- 3) (str.len y)) (* 9 (str.to_int x)) (* 4 (str.to_int z))) 4))
(assert (>= (+ (* 8 (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 3) (str.to_int z))) 64))

(check-sat)