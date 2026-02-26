(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x z) (str.++ y "66")))

(assert (str.in_re y (re.++ (re.* (str.to_re "87")) (re.union (re.* (str.to_re "4")) (str.to_re "530")))))
(assert (str.in_re x (re.union (re.range "4" "9") (re.++ (str.to_re "50") (re.++ (str.to_re "40") (re.* (str.to_re "43")))))))
(assert (str.in_re z (re.+ (re.++ (re.range "4" "7") (re.* (re.* (re.range "1" "3")))))))

(assert (<= (+ (* (- 9) (str.len x)) (* (- 5) (str.len y)) (* 6 (str.len z))) 70))
(assert (>= (+ (* (- 8) (str.to_int x)) (* 2 (str.to_int y)) (* (- 2) (str.to_int z))) 70))

(check-sat)