(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.++ (re.union (str.to_re "110") (re.+ (re.range "0" "4"))) (str.to_re "907"))))
(assert (str.in_re x (re.* (re.* (re.union (str.to_re "380") (re.+ (str.to_re "5")))))))
(assert (str.in_re z (re.+ (re.union (re.range "2" "4") (str.to_re "5")))))

(assert (< (+ (* (- 5) (str.len x)) (* 5 (str.to_int x)) (* (- 3) (str.to_int y)) (* (- 2) (str.to_int z))) 17))

(check-sat)