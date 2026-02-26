(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (= (str.++ y z) (str.++ x "93")))

(assert (str.in_re z (re.++ (str.to_re "9") (re.++ (re.* (str.to_re "58")) (re.+ (re.range "0" "4"))))))
(assert (str.in_re x (re.union (re.* (str.to_re "76")) (str.to_re "9"))))
(assert (str.in_re y (re.union (re.union (re.range "2" "9") (re.++ (str.to_re "241") (re.* (str.to_re "27")))) (str.to_re "88"))))

(assert (<= (+ (* 5 (str.len y)) (* 4 (str.to_int x)) (- (str.to_int y))) 18))

(check-sat)