(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (str.to_re "2") (re.* (re.range "0" "3")))))
(assert (str.in_re y (re.++ (re.+ (re.* (str.to_re "647"))) (re.+ (re.range "4" "8")))))
(assert (str.in_re z (re.union (re.+ (str.to_re "40")) (re.* (str.to_re "629")))))

(assert (= (+ (str.len x) (* (- 10) (str.len y)) (* (- 7) (str.len z))) 29))
(assert (> (+ (* 6 (str.to_int x)) (* (- 3) (str.to_int y)) (* (- 3) (str.to_int z))) 64))
(assert (>= (+ (* (- 4) (str.to_int x)) (* 3 (str.to_int y)) (* (- 5) (str.to_int z))) 59))

(check-sat)