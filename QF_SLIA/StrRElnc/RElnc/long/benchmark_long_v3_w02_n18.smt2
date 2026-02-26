(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (= (str.++ x z) (str.++ "91" y)))

(assert (str.in_re z (re.++ (str.to_re "7") (re.union (re.+ (str.to_re "324")) (str.to_re "785")))))
(assert (str.in_re x (re.union (re.+ (re.* (re.range "0" "9"))) (str.to_re "44"))))
(assert (str.in_re y (re.+ (re.union (re.range "2" "9") (str.to_re "831")))))

(assert (<= (+ (* 7 (str.len x)) (* (- 6) (str.len y))) 37))
(assert (= (+ (* 2 (str.to_int x)) (* 5 (str.to_int y)) (* 9 (str.to_int z))) 9))

(check-sat)