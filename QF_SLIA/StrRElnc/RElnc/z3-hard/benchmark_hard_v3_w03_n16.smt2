(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y z) (str.++ x "31")))

(assert (str.in_re x (re.* (re.union (re.range "3" "9") (re.union (str.to_re "944") (re.* (str.to_re "10")))))))
(assert (str.in_re z (re.++ (re.+ (re.range "1" "6")) (str.to_re "831"))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "996")) (re.+ (str.to_re "6")))))

(assert (> (+ (* (- 8) (str.len x)) (* 10 (str.len y)) (* 7 (str.len z))) 28))
(assert (> (+ (str.len x) (* (- 2) (str.len y)) (* 5 (str.len z))) 41))
(assert (> (+ (* 2 (str.to_int x)) (* 3 (str.to_int y)) (* 5 (str.to_int z))) 43))

(check-sat)