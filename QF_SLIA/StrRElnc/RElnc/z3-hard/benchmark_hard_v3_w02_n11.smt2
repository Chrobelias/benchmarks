(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y z) (str.++ x "96")))

(assert (str.in_re x (re.++ (re.* (re.range "5" "9")) (str.to_re "7"))))
(assert (str.in_re z (re.+ (re.++ (re.* (str.to_re "3")) (re.range "3" "8")))))
(assert (str.in_re y (re.* (re.union (re.range "6" "9") (re.union (re.range "7" "9") (str.to_re "23"))))))

(assert (>= (+ (* 7 (str.to_int x)) (* 8 (str.to_int y)) (* 2 (str.to_int z))) 10))
(assert (= (+ (* 9 (str.len x)) (* (- 4) (str.len y))) 23))

(check-sat)