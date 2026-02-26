(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x z) (str.++ "36" y)))

(assert (str.in_re y (re.* (re.union (str.to_re "89") (re.* (re.range "0" "6"))))))
(assert (str.in_re x (re.++ (re.* (re.range "1" "8")) (re.union (re.range "6" "9") (re.+ (str.to_re "207"))))))
(assert (str.in_re z (re.+ (re.union (re.union (str.to_re "15") (re.* (str.to_re "193"))) (re.range "1" "9")))))

(assert (= (+ (* 7 (str.to_int x)) (* (- 2) (str.to_int y)) (* 3 (str.to_int z))) 70))
(assert (> (+ (* (- 2) (str.len x)) (* 9 (str.len y)) (* 6 (str.len z))) 17))

(check-sat)