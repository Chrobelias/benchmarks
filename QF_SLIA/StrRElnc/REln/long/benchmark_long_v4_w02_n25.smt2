(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.union (re.++ (str.to_re "12") (str.to_re "5")) (re.* (str.to_re "6")))))
(assert (str.in_re a (re.* (re.union (str.to_re "612") (re.union (str.to_re "0") (re.+ (str.to_re "2")))))))
(assert (str.in_re z (re.union (str.to_re "70") (re.* (str.to_re "2")))))
(assert (str.in_re x (re.union (re.* (str.to_re "7")) (re.range "0" "3"))))

(assert (= (+ (* (- 3) (str.len x)) (- (str.to_int z))) 85))

(check-sat)