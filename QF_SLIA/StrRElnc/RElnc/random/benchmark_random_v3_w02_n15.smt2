(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y "47") (str.++ z "84" x)))

(assert (str.in_re y (re.union (re.* (str.to_re "467")) (re.++ (re.* (re.range "4" "7")) (re.range "3" "9")))))
(assert (str.in_re x (re.union (re.union (re.range "6" "8") (re.+ (re.+ (str.to_re "79")))) (str.to_re "546"))))
(assert (str.in_re z (re.union (str.to_re "205") (re.union (re.* (str.to_re "10")) (re.range "2" "7")))))

(assert (> (+ (* 5 (str.len x)) (* (- 6) (str.len y)) (* (- 4) (str.len z)) (* (- 3) (str.to_int y))) 36))

(check-sat)