(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (re.+ (re.* (str.to_re "431"))) (str.to_re "15"))))
(assert (str.in_re y (re.+ (str.to_re "5"))))
(assert (str.in_re z (re.++ (re.+ (str.to_re "85")) (re.++ (re.+ (str.to_re "170")) (re.range "3" "8")))))
(assert (str.in_re a (re.* (re.range "7" "9"))))

(assert (= (+ (* 2 (str.len y)) (* (- 5) (str.len z)) (* 6 (str.to_int z))) 86))
(assert (= (+ (* (- 4) (str.to_int x)) (* 5 (str.to_int y)) (* 4 (str.to_int z)) (* 6 (str.to_int a))) 62))

(check-sat)